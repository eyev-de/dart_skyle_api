//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';
import 'dart:math';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../data/models/calibration/calibration_points.dart';
import '../data/models/switch/switch.dart';
import '../domain/repositories/calibration_repository.dart';
import '../generated/Types.pb.dart' as types;
import '../generated/google/protobuf/empty.pb.dart';
import '../generated/Skyle.pbgrpc.dart';
import 'positionings.dart';

class SkyleSimulatedServiceConfiguration {
  final bool positioningStream;
  final bool gazeStream;
  SkyleSimulatedServiceConfiguration({
    this.gazeStream = true,
    this.positioningStream = true,
  });
}

class SkyleSimulatedService extends SkyleServiceBase {
  final SkyleSimulatedServiceConfiguration config;

  SkyleSimulatedService({required this.config});

  Options options = defaultOptions;
  List<Profile> profiles = [defaultProfile];
  Profile currentP = defaultProfile;
  Button button = Switch.toButton(Switch.create());

  List<types.Point> gazes = List.generate(200, (index) {
    return types.Point(
      x: 150 + Random.secure().nextInt(100).toDouble(),
      y: 0 + Random.secure().nextInt(100).toDouble(),
    );
  });

  List<PositioningMessage> positionings = (jsonDecode(positioningsJSONString) as Iterable).map((position) {
    return PositioningMessage(
      // ignore: avoid_dynamic_calls
      leftEye: types.Point(x: position['left']['x'], y: position['left']['y']),
      // ignore: avoid_dynamic_calls
      rightEye: types.Point(x: position['right']['x'], y: position['right']['y']),
    );
  }).toList();

  @override
  Stream<CalibMessages> calibrate(ServiceCall call, Stream<CalibControlMessages> request) async* {
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
            currentPoint: types.Point(
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
          final qualityMsg = CalibQuality(quality: 4, qualities: List.generate(pts.value, (index) => 4));
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
                  currentPoint: types.Point(
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
            final qualityMsg = CalibQuality(quality: 4, qualities: List.generate(msg.calibControl.numberOfPoints, (index) => 4));
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
    if (profiles.where((element) => element.id == request.id).isNotEmpty) {
      if (request.id == 1) return StatusMessage()..success = false;
      if (currentP.id == request.id) {
        currentP = defaultProfile;
      }
      profiles.removeWhere((element) => element.id == request.id);
      return StatusMessage()..success = true;
    }
    return StatusMessage()..success = false;
  }

  @override
  Stream<types.Point> gaze(ServiceCall call, Empty request) async* {
    if (!config.gazeStream) return;
    while (!call.isCanceled) {
      for (final gaze in gazes) {
        yield gaze;
        await Future.delayed(const Duration(milliseconds: 20));
      }
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
    if (!config.positioningStream) return;
    for (final positioning in positionings) {
      yield positioning;
      await Future.delayed(const Duration(milliseconds: 20));
    }
    int counter = 0;
    while (!call.isCanceled) {
      yield positionings[counter++];
      if (counter == positionings.length) counter = 0;
      await Future.delayed(const Duration(milliseconds: 20));
    }
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
    if (profiles.where((element) => element.id == request.id).isNotEmpty) {
      if (request.id == 1) return StatusMessage()..success = false;
      final int i = profiles.indexWhere((element) => element.id == request.id);
      if (i == -1) return StatusMessage()..success = false;
      profiles[i] = request;
      currentP = request;
      return StatusMessage()..success = true;
    }
    final Profile max = profiles.reduce((currentProfile, nextProfile) => currentProfile.id > nextProfile.id ? currentProfile : nextProfile);
    request.id = max.id + 1;
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
    return const Stream.empty();
  }

  @override
  Stream<types.Point> cursorCalibration(ServiceCall call, Stream<CalibCursorMessages> request) {
    return const Stream.empty();
  }

  @override
  Stream<BinocularGaze> rawBinocularGaze(ServiceCall call, Empty request) {
    return const Stream.empty();
  }

  @override
  Stream<types.RawImage> rawImages(ServiceCall call, Empty request) {
    return const Stream.empty();
  }

  @override
  Stream<Options> configureStream(ServiceCall call, Stream<OptionMessage> request) {
    throw UnimplementedError();
  }
}

final defaultOptions = Options(
  disableMouse: false,
  enableVideoStream: false,
  enableAutoPause: false,
  enablePause: false,
  enableAutoStandby: false,
  enablePositioningStream: false,
  res: ScreenResolution(width: 1920, height: 1080, widthInMM: 560, heightInMM: 350),
  filter: FilterOptions(gazeFilter: 5, fixationFilter: 11),
  iPadOptions: IPadOptions(isNotZoomed: true, isOldiOS: false),
  hp: false,
);

final defaultProfile = Profile()
  ..id = 1
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
  ..base = 'v2.0-22-g971c7df'
  ..calib = 'v3.1-138-gf06f9e1'
  ..eyetracker = 'v3.1-117-ga7924ad'
  ..firmware = 'v2.1-19-g91f1bf8'
  ..isDemo = false
  ..serial = Int64.parseInt('50006867312652526')
  ..skyleType = 2;
