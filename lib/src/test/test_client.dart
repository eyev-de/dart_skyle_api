//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../api.dart';

class TestClient {
  final et = ET();

  Future<void> main(List<String> args) async {
    await et.testConnectClients(url: 'localhost', port: 8001);
  }
}
