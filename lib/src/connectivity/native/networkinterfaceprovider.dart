//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:io';
import 'dart:isolate';

import '../../et.dart';
import '../connectivityprovider.dart';

class NetworkInterfaceProvider implements ConnectivityProvider {
  static final NetworkInterfaceProvider _instance = NetworkInterfaceProvider._internal();
  factory NetworkInterfaceProvider() {
    return _instance;
  }
  NetworkInterfaceProvider._internal();

  Isolate? _isolate;
  ReceivePort? _port;

  @override
  Future<void> start(void Function(ConnectionMessage message) onConnectionMessageChanged) async {
    if (running) return;
    running = true;
    _port = ReceivePort();
    _isolate = await Isolate.spawn(_isolateFunction, _port!.sendPort);
    await for (final message in _port!) {
      if (message is ConnectionMessage) {
        if (state.connection != message.connection) {
          state = message;
          onConnectionMessageChanged(message);
        }
      }
    }
  }

  @override
  void stop() {
    if (!running) return;
    state = ConnectionMessage.disconnected();
    _isolate?.kill(priority: Isolate.immediate);
    _port?.close();
    running = false;
  }

  @override
  ConnectionMessage state = ConnectionMessage.disconnected();

  @override
  bool running = false;

  static Future<void> _isolateFunction(SendPort portReceive) async {
    // ignore: literal_only_boolean_expressions
    ConnectionMessage message = ConnectionMessage.disconnected();
    // ignore: literal_only_boolean_expressions
    do {
      try {
        if (message.connection == Connection.connecting) {
          message = await _detectIPs([message.url!]);
        } else {
          // TODO(krjw-eyev)
          // _lookupHost() works but is slow and could cause issues.
          // message = await _lookupHost();
          // if (message.connection == Connection.disconnected) {
          message = await _detectIPs(ET.possibleIPs);
          // }
        }
      } catch (error) {
        ET.logger?.e('Connection Isolate reports error: ', error, StackTrace.current);
        message = ConnectionMessage.disconnected();
      }
      portReceive.send(message);
      sleep(const Duration(milliseconds: 500));
    } while (true);
  }

  static Future<ConnectionMessage> _detectIPs(List<String> urls) async {
    ConnectionMessage message = ConnectionMessage.disconnected();
    try {
      final List<NetworkInterface> interfaces = await NetworkInterface.list();
      for (final NetworkInterface interface in interfaces) {
        for (final InternetAddress address in interface.addresses) {
          final hostIP = '${address.address.substring(0, address.address.length - 1)}2';
          if (address.type == InternetAddressType.IPv4 && urls.contains(hostIP)) {
            message = ConnectionMessage.connecting(hostIP);
            break;
          }
        }
        if (message.connection == Connection.connecting) {
          // print('Found Skyle with ip: ${message.url}');
          break;
        }
      }
    } catch (error) {
      message = ConnectionMessage.disconnected();
    }
    return message;
  }

  // static Future<ConnectionMessage> _lookupHost() async {
  //   ConnectionMessage message = ConnectionMessage.disconnected();
  //   try {
  //     final list = await InternetAddress.lookup('skyle.local');
  //     for (final address in list) {
  //       if (address.type == InternetAddressType.IPv4) {
  //         message = ConnectionMessage.connecting(address.address);
  //         // print('Found Skyle with host detection: ${message.url}');
  //         break;
  //       }
  //     }
  //   } catch (error) {
  //     message = ConnectionMessage.disconnected();
  //   }
  //   return message;
  // }
}

ConnectivityProvider getConnectivityProvider() => NetworkInterfaceProvider();
