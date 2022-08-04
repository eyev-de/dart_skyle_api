//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../data/models/calibration_points.dart';
import '../data/models/switch/switch.dart';
import '../domain/repositories/calibration_repository.dart';
import '../generated/Skyle.proto/Skyle.pbgrpc.dart';
import '../generated/google/protobuf/empty.pb.dart';
import 'positionings.dart';

class SkyleService extends SkyleServiceBase {
  Options options = defaultOptions;
  List<Profile> profiles = [defaultProfile];
  Profile currentP = defaultProfile;
  Button button = Switch.toButton(Switch.create());

  List<Point> gazes = [];
  List<PositioningMessage> positionings = [];

  @override
  Stream<CalibMessages> calibrate(ServiceCall call, Stream<calibControlMessages> request) async* {
    bool abort = false;
    CalibrationPoints? pts;
    int currentIndex = 0;
    double width = 0;
    double height = 0;
    await for (final msg in request) {
      if (msg.hasCalibConfirm() && msg.calibConfirm.confirmed && pts != null) {
        yield CalibMessages()
          ..calibPoint = CalibPoint(
            count: currentIndex,
            currentPoint: Point(
              x: CalibrationRepository.calcX(
                pts.array[currentIndex],
                width,
              ),
              y: CalibrationRepository.calcY(
                pts.array[currentIndex],
                width,
                height,
              ),
            ),
          );
        currentIndex++;
        if (currentIndex == pts.value) {
          if (abort) return;
          await Future.delayed(const Duration(milliseconds: 100));
          final qualityMsg = CalibQuality(quality: 4, qualitys: List.generate(pts.value, (index) => 4));
          yield CalibMessages()..calibQuality = qualityMsg;
          return;
        }
      }
      if (msg.hasCalibControl()) {
        if (msg.calibControl.hasAbort()) {
          abort = msg.calibControl.abort;
          return;
        }
        if (msg.calibControl.hasRes()) {
          width = msg.calibControl.res.width.toDouble();
          height = msg.calibControl.res.height.toDouble();
        }
        if (msg.calibControl.hasCalibrate() && msg.calibControl.calibrate) {
          if (msg.calibControl.hasNumberOfPoints()) {
            pts = CalibrationPoints.fromInt(msg.calibControl.numberOfPoints);
          } else {
            pts = CalibrationPoints.nine;
          }
          if (msg.calibControl.hasStepByStep() && msg.calibControl.stepByStep) {
            //
          } else {
            for (final pt in List.generate(pts.value, (index) => index)) {
              await Future.delayed(const Duration(milliseconds: 100));
              if (abort) return;
              yield CalibMessages()
                ..calibPoint = CalibPoint(
                  count: pt,
                  currentPoint: Point(
                    x: CalibrationRepository.calcX(
                      pts.array[pt],
                      width,
                    ),
                    y: CalibrationRepository.calcY(
                      pts.array[pt],
                      width,
                      height,
                    ),
                  ),
                );
            }
            if (abort) return;
            await Future.delayed(const Duration(milliseconds: 100));
            final qualityMsg = CalibQuality(quality: 4, qualitys: List.generate(msg.calibControl.numberOfPoints, (index) => 4));
            yield CalibMessages()..calibQuality = qualityMsg;
            return;
          }
        }
      }
    }
  }

  @override
  Future<Options> configure(ServiceCall call, OptionMessage request) async {
    return options = request.options;
  }

  @override
  Future<Profile> currentProfile(ServiceCall call, Empty request) async {
    return currentP;
  }

  @override
  Future<StatusMessage> deleteProfile(ServiceCall call, Profile request) async {
    if (profiles.where((element) => element.iD == request.iD).isNotEmpty) {
      if (request.iD == 1) return StatusMessage()..success = false;
      if (currentP.iD == request.iD) {
        currentP = defaultProfile;
      }
      profiles.removeWhere((element) => element.iD == request.iD);
      return StatusMessage()..success = true;
    }
    return StatusMessage()..success = false;
  }

  @override
  Stream<Point> gaze(ServiceCall call, Empty request) async* {
    for (final gaze in gazes) {
      yield gaze;
    }
  }

  @override
  Future<Button> getButton(ServiceCall call, Empty request) async {
    return button;
  }

  @override
  Stream<Profile> getProfiles(ServiceCall call, Empty request) async* {
    for (final profile in profiles) {
      yield profile;
    }
  }

  @override
  Future<DeviceVersions> getVersions(ServiceCall call, Empty request) async {
    return defaultVersions;
  }

  @override
  Stream<PositioningMessage> positioning(ServiceCall call, Empty request) async* {
    if (positionings.isEmpty) {
      final positioningArray = jsonDecode(positioningsJSONString);
      for (final position in positioningArray) {
        final positioning = PositioningMessage(
          // ignore: avoid_dynamic_calls
          leftEye: Point(x: position['left']['x'], y: position['left']['y']),
          // ignore: avoid_dynamic_calls
          rightEye: Point(x: position['right']['x'], y: position['right']['y']),
        );
        positionings.add(positioning);
        yield positioning;
        await Future.delayed(const Duration(milliseconds: 20));
      }
    } else {
      for (final positioning in positionings) {
        yield positioning;
        await Future.delayed(const Duration(milliseconds: 20));
      }
    }
    // int counter = 0;
    // while (true) {
    //   yield positionings[counter++];
    //   if (counter == positionings.length - 1) counter = 0;
    //   Future.delayed(const Duration(milliseconds: 20));
    // }
  }

  @override
  Future<StatusMessage> reset(ServiceCall call, ResetMessage request) async {
    if (request.data) {
      profiles = [defaultProfile];
      currentP = defaultProfile;
      button = Switch.toButton(Switch.create());
      options = defaultOptions;
    }
    return StatusMessage()..success = true;
  }

  @override
  Future<ButtonActions> setButton(ServiceCall call, ButtonActions request) async {
    return button.buttonActions = request;
  }

  @override
  Future<StatusMessage> setProfile(ServiceCall call, Profile request) async {
    if (profiles.where((element) => element.iD == request.iD).isNotEmpty) {
      if (request.iD == 1) return StatusMessage()..success = false;
      final int i = profiles.indexWhere((element) => element.iD == request.iD);
      if (i == -1) return StatusMessage()..success = false;
      profiles[i] = request;
      currentP = request;
      return StatusMessage()..success = true;
    }
    final Profile max = profiles.reduce((currentProfile, nextProfile) => currentProfile.iD > nextProfile.iD ? currentProfile : nextProfile);
    request.iD = max.iD + 1;
    profiles.add(request);
    currentP = request;
    // print('Current Profile ${currentP.iD}: ${currentP.name} -> ${currentP.skill}');
    // for (final profile in profiles) {
    //   print('${profile.iD}: ${profile.name} -> ${profile.skill}');
    // }
    return StatusMessage()..success = true;
  }

  @override
  Stream<TriggerMessage> trigger(ServiceCall call, Empty request) {
    // TODO: implement trigger
    throw UnimplementedError();
  }

  @override
  Stream<Point> cursorCalibration(ServiceCall call, Stream<calibCursorMessages> request) {
    // TODO: implement cursorCalibration
    throw UnimplementedError();
  }
}

final defaultOptions = Options(
  disableMouse: false,
  stream: false,
  enablePause: false,
  pause: false,
  enableStandby: false,
  guidance: false,
  res: ScreenResolution(width: 1920, height: 1080, widthinMM: 560, heightinMM: 350),
  filter: FilterOptions(gazeFilter: 5, fixationFilter: 11),
  iPadOptions: IPadOptions(isNotZommed: true, isOldiOS: false),
  hp: false,
);

final defaultProfile = Profile()
  ..iD = 1
  ..name = 'Default'
  ..skill = Profile_Skill.Medium;

final defaultButton = Button(
  availableActions: [
    'None',
    'Tap',
    'Context',
    'Scroll',
    'Calibrate',
  ],
  buttonActions: ButtonActions(
    singleClick: 'Tap',
    doubleClick: 'Context',
    holdClick: 'Scroll',
  ),
  isPresent: false,
);

final defaultVersions = DeviceVersions()
  ..base = '1.0'
  ..calib = '1.0'
  ..eyetracker = '1.0'
  ..firmware = '1.0'
  ..isDemo = false
  ..serial = Int64.fromInts(7777777, 7777777)
  ..skyleType = 7;
