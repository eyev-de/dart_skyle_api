//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:convert';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/services.dart';

import 'package:grpc/grpc.dart';
import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/test/positionings.dart';

class SkyleService extends SkyleServiceBase {
  Options options = defaultOptions;
  List<Profile> profiles = [defaultProfile];
  Profile currentP = defaultProfile;
  Button button = defaultButton;

  List<Point> gazes = [];
  List<PositioningMessage> positionings = [];

  @override
  Stream<CalibMessages> calibrate(ServiceCall call, Stream<calibControlMessages> request) async* {
    bool abort = false;
    await for (var msg in request) {
      if (msg.calibControl.calibrate) {
        final pts = CalibrationPointsExtension.fromInt(msg.calibControl.numberOfPoints);
        for (var pt in List.generate(pts.value, (index) => index)) {
          await Future.delayed(Duration(milliseconds: 300));
          if (abort) return;
          final width = msg.calibControl.res.width.toDouble();
          final height = msg.calibControl.res.height.toDouble();
          yield CalibMessages()
            ..calibPoint = CalibPoint(
              count: pt,
              currentPoint: Point(
                x: Calibration.calcX(
                  pts.array[pt],
                  width,
                ),
                y: Calibration.calcY(
                  pts.array[pt],
                  width,
                  height,
                ),
              ),
            );
        }
        if (abort) return;
        await Future.delayed(Duration(milliseconds: 300));
        final qualityMsg = CalibQuality(quality: 3, qualitys: List.generate(msg.calibControl.numberOfPoints, (index) => 3));
        yield CalibMessages()..calibQuality = qualityMsg;
        return;
      } else if (msg.calibControl.abort = true) {
        abort = true;
        return;
      }
    }
  }

  @override
  Future<Options> configure(ServiceCall call, OptionMessage request) async {
    options = request.options;
    return options;
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
    for (var gaze in gazes) {
      yield gaze;
    }
  }

  @override
  Future<Button> getButton(ServiceCall call, Empty request) async {
    return button;
  }

  @override
  Stream<Profile> getProfiles(ServiceCall call, Empty request) async* {
    for (var profile in profiles) yield profile;
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
          leftEye: Point(x: position['left']['x'], y: position['left']['y']),
          rightEye: Point(x: position['right']['x'], y: position['right']['y']),
        );
        positionings.add(positioning);
        yield positioning;
        Future.delayed(const Duration(milliseconds: 20));
      }
    } else {
      for (var positioning in positionings) {
        yield positioning;
        Future.delayed(const Duration(milliseconds: 20));
      }
    }
  }

  @override
  Future<StatusMessage> reset(ServiceCall call, ResetMessage request) async {
    if (request.data) {
      profiles = [defaultProfile];
      currentP = defaultProfile;
      button = defaultButton;
      options = defaultOptions;
    }
    return StatusMessage()..success = true;
  }

  @override
  Future<ButtonActions> setButton(ServiceCall call, ButtonActions request) async {
    button.buttonActions = request;
    return button.buttonActions;
  }

  @override
  Future<StatusMessage> setProfile(ServiceCall call, Profile request) async {
    if (profiles.where((element) => element.iD == request.iD).isNotEmpty) {
      if (request.iD == 1) return StatusMessage()..success = true;
      int i = profiles.indexOf(request);
      profiles[i] = request;
      currentP = request;
      return StatusMessage()..success = true;
    }
    Profile max = profiles.reduce((currentProfile, nextProfile) => currentProfile.iD > nextProfile.iD ? currentProfile : nextProfile);
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
}

final defaultOptions = Options(
  disableMouse: false,
  stream: false,
  enablePause: false,
  pause: false,
  enableStandby: false,
  guidance: false,
  res: ScreenResolution(width: 1920, height: 1080, widthinMM: 560, heightinMM: 250),
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
  isPresent: true,
);

final defaultVersions = DeviceVersions()
  ..base = '1.0'
  ..calib = '1.0'
  ..eyetracker = '1.0'
  ..firmware = '1.0'
  ..isDemo = false
  ..serial = Int64.fromInts(7777777, 7777777)
  ..skyleType = 7;
