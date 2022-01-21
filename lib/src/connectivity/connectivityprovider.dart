//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:math';

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

class BackOffStrategy {
  static const _initialBackoff = Duration(milliseconds: 500);
  static const _maxBackoff = Duration(seconds: 7);
  static const _multiplier = 1.6;
  static const _jitter = 0.2;
  static final _random = Random();

  static Duration defaultBackoffStrategy(Duration? lastBackoff) {
    if (lastBackoff == null) return _initialBackoff;
    final jitter = _random.nextDouble() * 2 * _jitter - _jitter;
    final nextBackoff = lastBackoff * (_multiplier + jitter);
    return nextBackoff < _maxBackoff ? nextBackoff : _maxBackoff;
  }
}
