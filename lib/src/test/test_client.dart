//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../api.dart';
import 'constants.dart';

class TestClient {
  final et = ET();

  Future<void> start() async {
    await et.testConnectClients(url: 'localhost', port: grpcServerPort);
  }

  Future<void> stop() async {
    await et.disconnect();
  }
}
