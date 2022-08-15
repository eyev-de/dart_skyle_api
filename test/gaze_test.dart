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
  GazeTester.run(client, server);
}

class GazeTester {
  static void run(TestClient client, TestServer server) {
    group('Gaze', () {
      test('Receive Gaze', () async {
        var index = 0;
        final stream = client.et.gaze.start();
        await for (final coordinates in stream) {
          if (coordinates is DataFailed) {
            break;
          }
          expect(coordinates.data, isNotNull);
          expect(coordinates.data!.x, server.service.gazes[index].x);
          expect(coordinates.data!.y, server.service.gazes[index++].y);
          if (index == server.service.gazes.length) {
            await client.et.gaze.stop();
          }
        }
        expect(index, server.service.gazes.length);
      });
    });
  }
}
