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
  static final NetworkInterfaceProvider _instance = NetworkInterfaceProvider._internal();
  factory NetworkInterfaceProvider() {
    return _instance;
  }
  NetworkInterfaceProvider._internal();

  Isolate? _isolateNetworkInterface;
  ReceivePort? _portNetworkInterface;

  @override
  Future<void> start(void Function(ConnectionMessage message) onConnectionMessageChanged) async {
    if (running) return;
    running = true;
    _portNetworkInterface = ReceivePort();
    _isolateNetworkInterface = await Isolate.spawn(_receivingIsolate, _portNetworkInterface!.sendPort);
    await for (final message in _portNetworkInterface!) {
      if (message is ConnectionMessage) {
        if (state != message.connection) {
          state = message.connection;
          onConnectionMessageChanged(message);
        }
      }
    }
  }

  static Future<void> _receivingIsolate(SendPort portReceive) async {
    // ignore: literal_only_boolean_expressions
    do {
      ConnectionMessage message = ConnectionMessage.disconnected();
      try {
        // Try to lookup skyle.local
        try {
          final list = await InternetAddress.lookup('skyle.local');
          for (final address in list) {
            if (address.type == InternetAddressType.IPv4) {
              message = ConnectionMessage.connecting(address.address);
              break;
            }
          }
        } catch (error) {
          message = ConnectionMessage.disconnected();
        }
        // Looking up skyle.local somehow failed
        // Try various ip addresses
        if (message.connection == Connection.disconnected) {
          final List<NetworkInterface> interfaces = await NetworkInterface.list();
          for (final NetworkInterface interface in interfaces) {
            for (final InternetAddress address in interface.addresses) {
              if (address.type == InternetAddressType.IPv4 && possibleBaseIPs.contains(address.address)) {
                message = ConnectionMessage.connecting(address.address);
                break;
              }
            }
            if (message.connection == Connection.connecting) {
              break;
            }
          }
        }
        portReceive.send(message);
      } catch (error) {
        portReceive.send(ConnectionMessage.disconnected());
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
