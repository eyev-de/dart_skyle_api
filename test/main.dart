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

void main() {
  final TestServer server = TestServer();
  final TestClient client = TestClient();

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
  CalibrationTester.run(client, server);
  GazeTester.run(client, server);
  PositioningTester.run(client, server);
  SettingsTester.run(client, server);
  SwitchTester.run(client, server);
  VersionsTester.run(client, server);
  ProfilesTester.run(client, server);
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
