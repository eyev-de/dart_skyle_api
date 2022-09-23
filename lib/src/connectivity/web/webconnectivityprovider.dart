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
  Future<void> start(void Function(ConnectionMessage message) onConnectionMessageChanged) async {
    connection = ConnectionMessage.connected('');
    onConnectionMessageChanged(ConnectionMessage(connection: Connection.connecting, url: 'skyle.local'));
  }

  @override
  Future<void> stop() async {}

  @override
  ConnectionMessage connection = ConnectionMessage.disconnected();

  @override
  ConnectivityProviderState state = ConnectivityProviderState.disposed;
}

ConnectivityProvider getConnectivityProvider() => WebConnectivityProvider();
