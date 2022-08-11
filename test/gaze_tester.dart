//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:math';

import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/generated/Skyle.pbgrpc.dart' as grpc;
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
  GazeTester.run(client, server);
}

class GazeTester {
  static void run(TestClient client, TestServer server) {
    group('Gaze', () {
      test('Receive Gaze', () async {
        for (var i = 0; i < 200; i++) {
          server.service.gazes.add(grpc.Point(
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
  }
}
