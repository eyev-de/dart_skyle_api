//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc.dart';

import 'mjpeg_test_server.dart';
import 'skyle_service.dart';

class SkyleTestServer {
  final service = SkyleService();
  late Server server;
  MJPEGTestServer? mjpegTestServer;

  SkyleTestServer({String? pathToJPEGs}) {
    server = Server([service]);
    if (pathToJPEGs != null)
      mjpegTestServer = MJPEGTestServer(path: pathToJPEGs);
  }

  Future<void> main(List<String> args) async {
    await server.serve(address: 'localhost', port: 8001, shared: true);
    mjpegTestServer?.main(args);
  }
}
