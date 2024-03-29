//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'dart:io';
import 'dart:isolate';

// import 'package:universal_platform/universal_platform.dart';

import 'package:universal_platform/universal_platform.dart';

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
  ReceivePort? _onExit;
  void Function(ConnectionMessage message)? _onConnectionMessageChanged;

  @override
  Future<void> start(void Function(ConnectionMessage message) onConnectionMessageChanged) async {
    if (state != ConnectivityProviderState.disposed) return;
    state = ConnectivityProviderState.initializing;
    _port = ReceivePort();
    _onExit = ReceivePort();
    _isolate = await Isolate.spawn(_isolateFunction, _port!.sendPort, onExit: _onExit!.sendPort);
    _onConnectionMessageChanged = onConnectionMessageChanged;
    state = ConnectivityProviderState.running;
    unawaited(_port!.forEach((message) {
      if (message is ConnectionMessage) {
        if (connection.connection != message.connection) {
          connection = message;
          _onConnectionMessageChanged?.call(connection);
        }
      }
    }));
  }

  @override
  Future<void> stop() async {
    if (state != ConnectivityProviderState.running) return;
    _isolate?.kill(priority: Isolate.immediate);
    // Wait for the isolate to terminate
    await _onExit?.first;
    _isolate = null;
    _port?.close();
    _port = null;
    state = ConnectivityProviderState.disposed;
    connection = ConnectionMessage.disconnected();
    _onConnectionMessageChanged?.call(connection);
  }

  @override
  ConnectionMessage connection = ConnectionMessage.disconnected();

  @override
  ConnectivityProviderState state = ConnectivityProviderState.disposed;

  static Future<void> _isolateFunction(SendPort portReceive) async {
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
        ET.logger?.e('Connection Isolate reports error: ', error: error, stackTrace: StackTrace.current);
        message = ConnectionMessage.disconnected();
      }
      portReceive.send(message);
      await Future.delayed(const Duration(milliseconds: 500));
    } while (true);
  }

  static Future<ConnectionMessage> _detectIPs(List<String> urls) async {
    ConnectionMessage message = ConnectionMessage.disconnected();
    try {
      final List<NetworkInterface> interfaces = await NetworkInterface.list();
      for (final NetworkInterface interface in interfaces) {
        // TODO(krjw-eyev) Document Android < 12 solution
        // This is a shady hack for Android < 12
        // if (UniversalPlatform.isAndroid && interface.name == 'eth0') {
        // for (final InternetAddress address in interface.addresses) {
        //   final addressParts = address.address.split('.');
        //   final hostIP = '${addressParts[0]}.${addressParts[1]}.${addressParts[2]}.243';
        //   message = ConnectionMessage.connecting(hostIP);
        //   break;
        // }
        // if (message.connection == Connection.connecting) {
        //   break;
        // }
        // }
        // END OF HACKY ANDROID SOLUTION

        // HACKY SOLUTION FOR CHROMEOS
        if (UniversalPlatform.isAndroid && interface.name == 'eth0') {
          message = ConnectionMessage.connecting('192.168.137.2');
          break;
        }
        // END OF HACKY SOLUTION OF CHROMEOS

        for (final InternetAddress address in interface.addresses) {
          final hostIP = '${address.address.substring(0, address.address.length - 1)}2';
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
