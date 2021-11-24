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

  SkyleTestServer({List<String>? paths}) {
    server = Server([service]);
    if (paths != null) mjpegTestServer = MJPEGTestServer(paths: paths);
  }

  Future<void> main(List<String> args) async {
    print('Starting API...');
    await server.serve(address: 'localhost', port: 8001, shared: true);
    print('Starting MJPEG server...');
    mjpegTestServer?.main(args);
  }
}
