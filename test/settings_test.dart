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
  SettingsTester.run(client, server);
}

class SettingsTester {
  static void run(TestClient client, TestServer server) {
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
        expect((await client.et.settings.enablePause()).data!.enablePause, isTrue);
        expect((await client.et.settings.enablePause(on: false)).data!.enablePause, isFalse);
      });
      test('Pause', () async {
        expect((await client.et.settings.pause()).data!.pause, isTrue);
        expect((await client.et.settings.pause(on: false)).data!.pause, isFalse);
      });
    });
  }
}
