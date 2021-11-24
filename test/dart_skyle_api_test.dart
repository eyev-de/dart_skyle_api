//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:skyle_api/src/test/skyle_service.dart';
import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/test/test_client.dart';
import 'package:skyle_api/src/test/test_server.dart';

void main() {
  SkyleTestServer server = SkyleTestServer();
  SkyleTestClient client = SkyleTestClient();

  setUpAll(() async {
    print('Starting server...');
    await server.main([]);
    print('Connecting to server...');
    await client.main([]);
    print('Connected');
  });

  tearDownAll(() async {
    print('Shutting down client...');
    await client.et.channel?.shutdown();
    print('Shutting down server...');
    await server.server.shutdown();
  });

  // group('Idle', () {
  //   test('Idle', () async {
  //     await Future.delayed(Duration(seconds: 100));
  //   });
  // });

  group('Calibration', () {
    test('Test 1 point calibration', () async {
      await testCalib(client.et.calibration, CalibrationPoints.one);
    });
    test('Test 2 point calibration', () async {
      await testCalib(client.et.calibration, CalibrationPoints.two);
    });
    test('Test 5 point calibration', () async {
      await testCalib(client.et.calibration, CalibrationPoints.five);
    });
    test('Test 9 point calibration', () async {
      await testCalib(client.et.calibration, CalibrationPoints.nine);
    });
  });

  group('Options', () {
    test('Mouse', () async {
      expect((await client.et.options.disableMouse()).disableMouse, isTrue);
      expect((await client.et.options.disableMouse(on: false)).disableMouse, isFalse);
    });
    test('Standby', () async {
      expect((await client.et.options.standby()).enableStandby, isTrue);
      expect((await client.et.options.standby(on: false)).enableStandby, isFalse);
    });
    test('Stream', () async {
      expect((await client.et.options.stream()).stream, isTrue);
      expect((await client.et.options.stream(on: false)).stream, isFalse);
    });
    test('Auto Pause', () async {
      expect((await client.et.options.autoPause()).enablePause, isTrue);
      expect((await client.et.options.autoPause(on: false)).enablePause, isFalse);
    });
    test('Pause', () async {
      expect((await client.et.options.pause()).pause, isTrue);
      expect((await client.et.options.pause(on: false)).pause, isFalse);
    });
  });

  group('Versions', () {
    test('Versions', () async {
      final versions = await client.et.version.getStateAsync();
      expect(versions.base, equals(defaultVersions.base));
      expect(versions.calib, equals(defaultVersions.calib));
      expect(versions.eyetracker, equals(defaultVersions.eyetracker));
      expect(versions.firmware, equals(defaultVersions.firmware));
      expect(versions.serial, equals(defaultVersions.serial));
      expect(versions.isDemo, equals(defaultVersions.isDemo));
      expect(versions.skyleType, equals(defaultVersions.skyleType));
    });
  });

  group('Profiles', () {
    test('Get profiles', () async {
      final profiles = await client.et.profiles.get();
      expect(profiles.first.id, equals(defaultProfile.iD));
      expect(profiles.first.name, equals(defaultProfile.name));
      expect(profiles.first.skill, equals(defaultProfile.skill));
    });

    test('Get current profile', () async {
      final currentProfile = await client.et.profiles.getCurrent();
      expect(currentProfile.id, equals(defaultProfile.iD));
      expect(currentProfile.name, equals(defaultProfile.name));
      expect(currentProfile.skill, equals(defaultProfile.skill));
    });

    test('Add profile, delete profile', () async {
      final profile = ProfileWrapper(data: Profile(iD: 2, name: 'Test', skill: Profile_Skill.Low));
      profile.client = client.et.client;
      final newProfile = await client.et.profiles.add(profile);
      expect(newProfile.id, profile.id);

      List<ProfileWrapper> profiles = await client.et.profiles.get();
      expect(profiles.length, equals(2));

      for (final p in profiles) {
        if (p.id == profile.id) {
          expect(p.id, equals(profile.id));
          expect(p.name, equals(profile.name));
          expect(p.skill, equals(profile.skill));
        }
      }

      final currentProfile = await client.et.profiles.getCurrent();
      expect(currentProfile.id, equals(profile.id));
      expect(currentProfile.name, equals(profile.name));
      expect(currentProfile.skill, equals(profile.skill));

      profile.client = client.et.client;
      final _ = await client.et.profiles.delete(currentProfile);

      profiles = await client.et.profiles.get();
      expect(profiles.length, equals(1));
    });
  });
  group('Gaze', () {
    test('Receive Gaze', () async {
      for (var i = 0; i < 200; i++)
        server.service.gazes.add(Point(
          x: Random.secure().nextInt(1920).toDouble(),
          y: Random.secure().nextInt(1080).toDouble(),
        ));
      var index = 0;
      client.et.gaze.addListener(() {
        // print('${client.et.gaze.point} == ${server.service.gazes[index]}');
        expect(client.et.gaze.point, server.service.gazes[index++]);
      });
      // await client.et.gaze.start();
    });
  });
  group('Positioning', () {
    test('Receive Positionings', () async {
      var index = 0;
      client.et.positioning.addListener(() {
        // print('${client.et.positioning.data.leftEye} == ${server.service.positionings[index].leftEye}');
        // print('${client.et.positioning.data.rightEye} == ${server.service.positionings[index].rightEye}');
        expect(client.et.positioning.data.leftEye, server.service.positionings[index].leftEye);
        expect(client.et.positioning.data.rightEye, server.service.positionings[index++].rightEye);
      });
      // await client.et.positioning.start();
    });
  });
}

Future<void> testCalib(Calibration calibration, CalibrationPoints pts) async {
  int count = 0;
  await calibration.start(
    points: pts,
    onData: (data) {
      if (data.hasCalibPoint()) {
        count++;
      } else if (data.hasCalibQuality()) {
        print('Calibration finished');
        print('Overall Quality ${data.calibQuality.quality}');
        print('Individual Quality:');
        data.calibQuality.qualitys.asMap().forEach((index, value) => print('Pt #$index: $value'));
        expect(count, equals(pts));
      }
    },
    onError: (error) {},
  );
  expect(count, equals(pts.value));
}

Future<R> expectNotifyListenerCalls<T extends ChangeNotifier, R>(
  T notifier,
  Future<R> Function() testFunction,
  Function(T) testValue,
  List<dynamic> matcherList,
) async {
  int i = 0;
  notifier.addListener(() {
    expect(testValue(notifier), matcherList[i]);
    i++;
  });
  final R result = await testFunction();
  expect(i, matcherList.length);
  return result;
}
