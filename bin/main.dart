//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:io';

import 'package:skyle_api/api.dart';

Future<void> main(List<String> args) async {
  print('Welcome to Skyle test server cli. Press ctrl + c twice to quit.');
  print('Skyle test server is a dart implementation of Skyles api backend.');

  final server = TestServer();
  await server.start();

  var n = 0;
  ProcessSignal.sigint.watch().listen(
    (signal) async {
      if (++n == 2) {
        await server.stop();
        exit(0);
      }
      print('Press ctrl + c again to quit');
    },
  );
}
