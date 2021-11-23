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
    ConnectionMessage message = ConnectionMessage.disconnected();
    do {
      try {
        if (message.connection == Connection.connecting) {
          message = await detectIPs([message.url!]);
        } else {
          message = await lookupHost();
          if (message.connection == Connection.disconnected) {
            message = await detectIPs(possibleBaseIPs);
          }
        }
      } catch (error) {
        message = ConnectionMessage.disconnected();
      }
      portReceive.send(message);
      sleep(const Duration(milliseconds: 500));
    } while (true);
  }

  static Future<ConnectionMessage> detectIPs(List<String> urls) async {
    ConnectionMessage message = ConnectionMessage.disconnected();
    try {
      final List<NetworkInterface> interfaces = await NetworkInterface.list();
      for (final NetworkInterface interface in interfaces) {
        for (final InternetAddress address in interface.addresses) {
          final hostIP = address.address.substring(0, address.address.length - 1) + '2';
          if (address.type == InternetAddressType.IPv4 && urls.contains(hostIP)) {
            message = ConnectionMessage.connecting(hostIP);
            break;
          }
        }
        if (message.connection == Connection.connecting) {
          break;
        }
      }
    } catch (error) {
      message = ConnectionMessage.disconnected();
    }
    return message;
  }

  static Future<ConnectionMessage> lookupHost() async {
    ConnectionMessage message = ConnectionMessage.disconnected();
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
    return message;
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
