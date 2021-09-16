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
  static final NetworkInterfaceProvider _instance =
      NetworkInterfaceProvider._internal();
  factory NetworkInterfaceProvider() {
    return _instance;
  }
  NetworkInterfaceProvider._internal();

  Isolate? _isolateNetworkInterface;
  ReceivePort? _portNetworkInterface;

  @override
  Future<void> start(
      void Function(Connection state) onConnectionChanged) async {
    if (running) return;
    running = true;
    _portNetworkInterface = ReceivePort();
    _isolateNetworkInterface =
        await Isolate.spawn(_receivingIsolate, _portNetworkInterface!.sendPort);
    await for (final available in _portNetworkInterface!) {
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
            if (address.type == InternetAddressType.IPv4 &&
                address.address == baseIP) {
              connected = Connection.connecting;
            }
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
    _portNetworkInterface?.close();
    running = false;
  }

  @override
  Connection state = Connection.disconnected;

  @override
  bool running = false;
}

ConnectivityProvider getConnectivityProvider() => NetworkInterfaceProvider();
