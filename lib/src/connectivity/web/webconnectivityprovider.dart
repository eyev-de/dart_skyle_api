//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import '../../../et.dart';
import '../connectivityprovider.dart';

class WebConnectivityProvider implements ConnectivityProvider {
  static final WebConnectivityProvider _instance =
      WebConnectivityProvider._internal();
  factory WebConnectivityProvider() {
    return _instance;
  }
  WebConnectivityProvider._internal();
  @override
  void start(void Function(Connection state) onConnectionChanged) {
    state = Connection.connected;
    onConnectionChanged(Connection.connected);
  }

  @override
  void stop() {}

  @override
  Connection state = Connection.disconnected;

  @override
  bool running = false;
}

ConnectivityProvider getConnectivityProvider() => WebConnectivityProvider();
