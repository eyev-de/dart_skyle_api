//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/src/test/test_client.dart';
import 'package:skyle_api/src/test/test_server.dart';
import 'package:test/test.dart';

import 'calibration_test.dart';
import 'gaze_test.dart';
import 'positioning_test.dart';
import 'profiles_test.dart';
import 'settings_test.dart';
import 'switch_test.dart';
import 'versions_test.dart';
import 'video_stream_test.dart';

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
  GazeTester.run(client, server);
  PositioningTester.run(client, server);
  SettingsTester.run(client, server);
  SwitchTester.run(client, server);
  VersionsTester.run(client, server);
  ProfilesTester.run(client, server);
  VideoStreamTester.run(client, server);
}
