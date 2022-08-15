//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/test/skyle_simulated_service.dart';
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
  VersionsTester.run(client, server);
}

class VersionsTester {
  static void run(TestClient client, TestServer server) {
    group('Versions', () {
      test('Versions', () async {
        final versions = await client.et.versions.get();
        expect(versions.data, isNotNull);
        expect(versions.data!.base, equals(defaultVersions.base));
        expect(versions.data!.calib, equals(defaultVersions.calib));
        expect(versions.data!.eyetracker, equals(defaultVersions.eyetracker));
        expect(versions.data!.firmware, equals(defaultVersions.firmware));
        expect(versions.data!.serial, equals(BigInt.parse(defaultVersions.serial.toString())));
        expect(versions.data!.isDemo, equals(defaultVersions.isDemo));
        expect(versions.data!.skyleType, equals(defaultVersions.skyleType));
      });
    });
  }
}
