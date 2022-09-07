//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:io';

import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;
import 'package:skyle_api/api.dart';
import 'package:skyle_api/src/test/constants.dart';
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
  VideoStreamTester.run(client, server);
}

class VideoStreamTester {
  static void run(TestClient client, TestServer server) {
    group('Video Stream', () {
      test('Video Stream', () async {
        final dir = Directory('assets');
        final localFiles = dir.listSync(recursive: true)..sort(((a, b) => a.path.compareTo(b.path)));

        final List<List<int>> localFilesData = [];
        for (final jpeg in localFiles) {
          if (jpeg is File && p.extension(jpeg.path) == '.jpg') {
            localFilesData.add(jpeg.readAsBytesSync());
          }
        }
        int counter = 0;
        int index = 0;

        await client.et.settings.video();

        final stream = client.et.stream.request(url: 'http://localhost:$mjpegServerPort').listen((data) async {
          if (index >= 5) index = 0;
          if (data is DataSuccess) {
            final localFile = localFilesData[index++];
            final incomingFile = data.data!;
            expect(const ListEquality<int>().equals(localFile, incomingFile), true);
            counter++;
          }
        });
        await Future.delayed(const Duration(seconds: 1));
        await client.et.stream.cancel();
        await stream.cancel();
        await client.et.settings.video(on: false);
        expect(counter, greaterThan(0));
        print('Streamed $counter images');
      });
    });
  }
}
