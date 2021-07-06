//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:io';
import 'dart:isolate';

import '../../../et.dart';
import '../connectivityprovider.dart';

class NetworkInterfaceProvider implements ConnectivityProvider {
  Isolate? _isolateNetworkInterface;
  final ReceivePort _portNetworkInterface = ReceivePort();

  @override
  Future<void> start(void Function(Connection state) onConnectionChanged) async {
    _isolateNetworkInterface = await Isolate.spawn(_receivingIsolate, _portNetworkInterface.sendPort);
    await for (final available in _portNetworkInterface) {
      if (available is Connection) {
        if (state != available) {
          state = available;
          onConnectionChanged(state);
        }
      }
    }
  }

  static Future<void> _receivingIsolate(SendPort portReceive) async {
    // ignore: literal_only_boolean_expressions
    do {
      try {
        final List<NetworkInterface> interfaces = await NetworkInterface.list();
        Connection connected = Connection.disconnected;
        for (final NetworkInterface interface in interfaces) {
          for (final InternetAddress address in interface.addresses) {
            if (address.type == InternetAddressType.IPv4 && address.address == baseIP) connected = Connection.connected;
          }
        }
        portReceive.send(connected);
      } catch (error) {
        portReceive.send(Connection.disconnected);
      }
      sleep(const Duration(milliseconds: 500));
    } while (true);
  }

  @override
  void stop() {
    state = Connection.disconnected;
    _isolateNetworkInterface?.kill(priority: Isolate.immediate);
    _portNetworkInterface.close();
  }

  @override
  Connection state = Connection.disconnected;
}

ConnectivityProvider getConnectivityProvider() => NetworkInterfaceProvider();
