//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/api.dart';
import 'package:test/test.dart';

import 'switch_matcher.dart';

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
  SwitchTester.run(client, server);
}

class SwitchTester {
  static void run(TestClient client, TestServer server) {
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
}
