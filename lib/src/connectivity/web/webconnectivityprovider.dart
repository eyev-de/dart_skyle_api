//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../et.dart';
import '../connectivityprovider.dart';

class WebConnectivityProvider implements ConnectivityProvider {
  static final WebConnectivityProvider _instance = WebConnectivityProvider._internal();
  factory WebConnectivityProvider() {
    return _instance;
  }
  WebConnectivityProvider._internal();
  @override
  void start(void Function(ConnectionMessage message) onConnectionMessageChanged) {
    connection = ConnectionMessage.connected('');
    onConnectionMessageChanged(ConnectionMessage(connection: Connection.connected));
  }

  @override
  void stop() {}

  @override
  ConnectionMessage connection = ConnectionMessage.disconnected();

  @override
  ConnectivityProviderState state = ConnectivityProviderState.disposed;
}

ConnectivityProvider getConnectivityProvider() => WebConnectivityProvider();
