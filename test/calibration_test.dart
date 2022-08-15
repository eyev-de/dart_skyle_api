//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/api.dart';
import 'package:test/test.dart';

void main() {
  final TestServer server = TestServer();
  final TestClient client = TestClient();

  setUpAll(() async {
    print('Starting server...');
    await server.start();
    print('Connecting to server...');
    await client.start();
    print('Connected');
  });

  tearDownAll(() async {
    print('Shutting down client...');
    await client.stop();
    print('Shutting down server...');
    await server.stop();
  });
  CalibrationTester.run(client, server);
}

class CalibrationTester {
  static void run(TestClient client, TestServer server) {
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
  }

  static Future<void> testCalib(CalibrationRepository calibration, CalibrationPoints pts) async {
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
}
