//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import '../../et.dart';

import 'connectivitystub.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) './native/networkinterfaceprovider.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) './web/webconnectivityprovider.dart';

abstract class ConnectivityProvider {
  ConnectionMessage state = ConnectionMessage.disconnected();
  bool running = false;
  void start(void Function(ConnectionMessage message) onConnectionMessageChanged);
  void stop();
  factory ConnectivityProvider() => getConnectivityProvider();
}

class ConnectionMessage {
  final Connection connection;
  final String? url;
  ConnectionMessage({required this.connection, this.url});
  factory ConnectionMessage.connecting(String url) {
    return ConnectionMessage(connection: Connection.connecting, url: url);
  }
  factory ConnectionMessage.disconnected() {
    return ConnectionMessage(connection: Connection.disconnected);
  }
  factory ConnectionMessage.connected(String url) {
    return ConnectionMessage(connection: Connection.connected, url: url);
  }
}
