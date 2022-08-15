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
  PositioningTester.run(client, server);
}

class PositioningTester {
  static void run(TestClient client, TestServer server) {
    group('Positioning', () {
      test('Receive Positionings', () async {
        const amountOfPositioningMessages = 300;
        var index = 0;
        var count = 0;
        final stream = client.et.positioning.start();
        await for (final positioningMessage in stream) {
          if (positioningMessage is DataFailed) {
            print(positioningMessage.error);
            break;
          }
          expect(positioningMessage.data, isNotNull);
          final leftX = positioningMessage.data!.eyes.left.x;
          final rightX = positioningMessage.data!.eyes.right.x;
          final leftY = positioningMessage.data!.eyes.left.y;
          final rightY = positioningMessage.data!.eyes.right.y;
          if (index == server.service.positionings.length) index = 0;
          // print('$leftX, $leftY == ${server.service.positionings[index].leftEye.x}, ${server.service.positionings[index].leftEye.y}');
          // print('$rightX, $rightY == ${server.service.positionings[index].rightEye.x}, ${server.service.positionings[index].rightEye.y}');
          expect(positioningMessage.data!.eyes.left.x, server.service.positionings[index].leftEye.x);
          expect(positioningMessage.data!.eyes.left.y, server.service.positionings[index].leftEye.y);
          expect(positioningMessage.data!.eyes.right.x, server.service.positionings[index].rightEye.x);
          expect(positioningMessage.data!.eyes.right.y, server.service.positionings[index++].rightEye.y);
          // print(server.service.positionings.length);
          if (++count == amountOfPositioningMessages) await client.et.positioning.stop();
        }
        expect(count, amountOfPositioningMessages);
      });
    });
  }
}
