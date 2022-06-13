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
  PositioningTester.run(client, server);
}

class PositioningTester {
  static void run(TestClient client, TestServer server) {
    group('Positioning', () {
      test('Receive Positionings', () async {
        var index = 0;
        final stream = client.et.positioning.start();
        await for (final positioningMessage in stream) {
          expect(positioningMessage.data, isNotNull);
          final leftX = positioningMessage.data!.eyes.left.x;
          final rightX = positioningMessage.data!.eyes.right.x;
          final leftY = positioningMessage.data!.eyes.left.y;
          final rightY = positioningMessage.data!.eyes.right.y;
          print('$leftX, $leftY == ${server.service.positionings[index].leftEye.x}, ${server.service.positionings[index].leftEye.y}');
          print('$rightX, $rightY == ${server.service.positionings[index].rightEye.x}, ${server.service.positionings[index].rightEye.y}');
          expect(positioningMessage.data!.eyes.left.x, server.service.positionings[index].leftEye.x);
          expect(positioningMessage.data!.eyes.left.y, server.service.positionings[index].leftEye.y);
          expect(positioningMessage.data!.eyes.right.x, server.service.positionings[index].rightEye.x);
          expect(positioningMessage.data!.eyes.right.y, server.service.positionings[index++].rightEye.y);
        }
      });
    });
  }
}
