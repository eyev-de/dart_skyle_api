//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:math';

import 'package:skyle_api/src/domain/entities/calibration_message.dart';
import 'package:skyle_api/src/domain/entities/calibration_points.dart';
import 'package:skyle_api/src/domain/entities/switch.dart';
import 'package:skyle_api/src/domain/repositories/calibration_repository.dart';
import 'package:skyle_api/src/generated/Skyle.proto/Skyle.pbgrpc.dart';
import 'package:skyle_api/src/test/skyle_service.dart';
import 'package:skyle_api/src/test/test_client.dart';
import 'package:skyle_api/src/test/test_server.dart';
import 'package:test/test.dart';

import 'switch_matcher.dart';

void main() {
  final SkyleTestServer server = SkyleTestServer();
  final SkyleTestClient client = SkyleTestClient();

  setUpAll(() async {
    print('Starting server...');
    await server.main([]);
    print('Connecting to server...');
    await client.main([]);
    print('Connected');
  });

  tearDownAll(() async {
    print('Shutting down client...');
    await client.et.disconnect();
    print('Shutting down server...');
    await server.server.shutdown();
  });

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

  group('Settings', () {
    test('Mouse', () async {
      expect((await client.et.settings.disableMouse()).data!.disableMouse, isTrue);
      expect((await client.et.settings.disableMouse(on: false)).data!.disableMouse, isFalse);
    });
    test('Standby', () async {
      expect((await client.et.settings.standby()).data!.enableStandby, isTrue);
      expect((await client.et.settings.standby(on: false)).data!.enableStandby, isFalse);
    });
    test('Stream', () async {
      expect((await client.et.settings.video()).data!.video, isTrue);
      expect((await client.et.settings.video(on: false)).data!.video, isFalse);
    });
    test('Auto Pause', () async {
      expect((await client.et.settings.autoPause()).data!.enablePause, isTrue);
      expect((await client.et.settings.autoPause(on: false)).data!.enablePause, isFalse);
    });
    test('Pause', () async {
      expect((await client.et.settings.pause()).data!.pause, isTrue);
      expect((await client.et.settings.pause(on: false)).data!.pause, isFalse);
    });
  });

  group('Versions', () {
    test('Versions', () async {
      final versions = await client.et.versions.get();
      expect(versions.data, isNotNull);
      expect(versions.data!.firmware, equals(defaultVersions.base));
      expect(versions.data!.calib, equals(defaultVersions.calib));
      expect(versions.data!.eyetracker, equals(defaultVersions.eyetracker));
      expect(versions.data!.firmware, equals(defaultVersions.firmware));
      expect(versions.data!.serial, equals(defaultVersions.serial));
      expect(versions.data!.isDemo, equals(defaultVersions.isDemo));
      expect(versions.data!.skyleType, equals(defaultVersions.skyleType));
    });
  });

  // group('Profiles', () {
  //   test('Get profiles', () async {
  //     final profiles = await client.et.profiles.get();
  //     expect(profiles.first.id, equals(defaultProfile.iD));
  //     expect(profiles.first.name, equals(defaultProfile.name));
  //     expect(profiles.first.skill, equals(defaultProfile.skill));
  //   });

  //   test('Get current profile', () async {
  //     final currentProfile = await client.et.profiles.getCurrent();
  //     expect(currentProfile.id, equals(defaultProfile.iD));
  //     expect(currentProfile.name, equals(defaultProfile.name));
  //     expect(currentProfile.skill, equals(defaultProfile.skill));
  //   });

  //   test('Add profile, delete profile', () async {
  //     final profile = ProfileWrapper(data: Profile(iD: 2, name: 'Test', skill: Profile_Skill.Low));
  //     profile.client = client.et.client;
  //     final newProfile = await client.et.profiles.add(profile);
  //     expect(newProfile.id, profile.id);

  //     List<ProfileWrapper> profiles = await client.et.profiles.get();
  //     expect(profiles.length, equals(2));

  //     for (final p in profiles) {
  //       if (p.id == profile.id) {
  //         expect(p.id, equals(profile.id));
  //         expect(p.name, equals(profile.name));
  //         expect(p.skill, equals(profile.skill));
  //       }
  //     }

  //     final currentProfile = await client.et.profiles.getCurrent();
  //     expect(currentProfile.id, equals(profile.id));
  //     expect(currentProfile.name, equals(profile.name));
  //     expect(currentProfile.skill, equals(profile.skill));

  //     profile.client = client.et.client;
  //     final _ = await client.et.profiles.delete(currentProfile);

  //     profiles = await client.et.profiles.get();
  //     expect(profiles.length, equals(1));
  //   });
  // });
  group('Gaze', () {
    test('Receive Gaze', () async {
      for (var i = 0; i < 200; i++) {
        server.service.gazes.add(Point(
          x: Random.secure().nextInt(1920).toDouble(),
          y: Random.secure().nextInt(1080).toDouble(),
        ));
      }
      var index = 0;
      final stream = client.et.gaze.start();
      await for (final coordinates in stream) {
        expect(coordinates.data, isNotNull);
        expect(coordinates.data!.x, server.service.gazes[index].x);
        expect(coordinates.data!.y, server.service.gazes[index++].y);
      }
    });
  });
  group('Positioning', () {
    test('Receive Positionings', () async {
      var index = 0;
      final stream = client.et.positioning.start();
      await for (final positioningMessage in stream) {
        expect(positioningMessage.data, isNotNull);
        final leftX = positioningMessage.data!.data!.eyes.left.x;
        final rightX = positioningMessage.data!.data!.eyes.right.x;
        final leftY = positioningMessage.data!.data!.eyes.left.y;
        final rightY = positioningMessage.data!.data!.eyes.right.y;
        print('$leftX, $leftY == ${server.service.positionings[index].leftEye.x}, ${server.service.positionings[index].leftEye.y}');
        print('$rightX, $rightY == ${server.service.positionings[index].rightEye.x}, ${server.service.positionings[index].rightEye.y}');
        expect(positioningMessage.data!.data!.eyes.left.x, server.service.positionings[index].leftEye.x);
        expect(positioningMessage.data!.data!.eyes.left.y, server.service.positionings[index].leftEye.y);
        expect(positioningMessage.data!.data!.eyes.right.x, server.service.positionings[index].rightEye.x);
        expect(positioningMessage.data!.data!.eyes.right.y, server.service.positionings[index++].rightEye.y);
      }
    });
  });

  group('Switch', () {
    test('Simulate switch polling', () async {
      final stream = client.et.switchSettings.start();
      // ignore: unawaited_futures
      expectLater(
        stream,
        emitsInOrder(
          [
            SwitchMatcher(Switch.create()),
            SwitchMatcher(Switch.create(isPresent: true)),
            SwitchMatcher(Switch.create()),
          ],
        ),
      );
      await Future.delayed(const Duration(milliseconds: 700));
      server.service.button.isPresent = true;
      await Future.delayed(const Duration(milliseconds: 500));
      server.service.button.isPresent = false;
    });
  });
}

Future<void> testCalib(CalibrationRepository calibration, CalibrationPoints pts) async {
  int count = 0;
  final stream = calibration.calibrate(
    pts,
  );
  await for (final message in stream) {
    expect(message.data, isNotNull);
    if (message.data is CalibrationPointMessage) {
      count++;
    } else if (message.data is CalibrationQualityMessage) {
      final data = message.data as CalibrationQualityMessage?;
      print('Calibration finished');
      print('Overall Quality ${data!.quality?.average}');
      print('Individual Quality:');
      data.quality!.qualities.asMap().forEach((index, value) => print('Pt #$index: ${value.quality}'));
      expect(count, equals(pts.value));
    }
  }
  expect(count, equals(pts.value));
}

// Future<R> expectNotifyListenerCalls<T extends ChangeNotifier, R>(
//   T notifier,
//   Future<R> Function() testFunction,
//   Function(T) testValue,
//   List<dynamic> matcherList,
// ) async {
//   int i = 0;
//   notifier.addListener(() {
//     expect(testValue(notifier), matcherList[i]);
//     i++;
//   });
//   final R result = await testFunction();
//   expect(i, matcherList.length);
//   return result;
// }
