//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:logger/logger.dart';

import 'src/calibration.dart';
import 'src/client/clientchannelwrapper.dart';
import 'src/connectivity/connectivityprovider.dart';
import 'src/gaze.dart';
import 'src/generated/Skyle.proto/Skyle.pbgrpc.dart';
import 'src/options.dart';
import 'src/positioning.dart';
import 'src/profiles.dart';
import 'src/reset.dart';
import 'src/switchoptions.dart';
import 'src/version.dart';

const List<String> possibleBaseIPs = ['10.0.0.1', '192.168.137.1'];

enum Connection { disconnected, connecting, connected }

class GRPCFailed {
  final String error;
  GRPCFailed({required this.error});
}

class TimeoutException implements Exception {}

class ET extends ChangeNotifier {
  ClientChannelBase? _channel;

  SkyleClient? _client;
  ConnectivityProvider connectivityProvider = ConnectivityProvider();
  OptionsStateNotifier options = OptionsStateNotifier();
  Calibration calibration = Calibration();
  Gaze gaze = Gaze();
  Positioning positioning = Positioning();
  Version version = Version();
  Profiles profiles = Profiles();
  SwitchOptions switchOptions = SwitchOptions();
  Reset reset = Reset();

  static Logger? logger;

  Connection _connection = Connection.disconnected;

  Connection get connection => _connection;
  SkyleClient? get client => _client;

  static String baseURL = 'skyle.local';

  ET();

  ClientChannelBase? get channel => _channel;

  void startScanningForInterface() {
    connectivityProvider.start(_onConnectionMessageChanged);
  }

  void stopScanningForInterface() {
    connectivityProvider.stop();
  }

  Future<void> _onConnectionMessageChanged(ConnectionMessage message) async {
    if (message.connection == Connection.connecting) {
      ET.baseURL = message.url!;
      _connection = message.connection;
      notifyListeners();
      await tryReconnect();
    } else {
      ET.logger?.i('Skyle disconnected.');
      await _disconnectClients();
      _connection = message.connection;
      notifyListeners();
    }
  }

  Future<void> tryReconnect() async {
    try {
      ET.logger?.i('Connecting Skyle with base ip: ${ET.baseURL}...');
      _connectClients(url: ET.baseURL, port: 50052);
      for (var i = 0; i < 50; i++) {
        try {
          await options.initAsync();
          _connection = Connection.connected;
          notifyListeners();
          switchOptions.start();
          break;
        } catch (error) {
          final milliseconds = 500 + 500 * i;
          ET.logger?.i('GRPC connection attempt $i/50 - Waiting ${milliseconds / 1000}s before retrying.');
          await Future.delayed(Duration(milliseconds: milliseconds));
        }
      }
      if (_connection == Connection.disconnected) throw Exception('Could not excecute initial GRPC');
    } catch (error) {
      ET.logger?.i('Skyle disconnected: $error');
      _connection = Connection.disconnected;
      await _disconnectClients();
      notifyListeners();
    }
  }

  Future<void> testConnectClients({required String url, required int port}) async {
    _connectClients(url: url, port: port);
    await options.initAsync();
    _connection = Connection.connected;
    notifyListeners();
  }

  void _connectClients({required String url, required int port}) {
    _channel = ClientChannelWrapper().getGRPCClient(
      url,
      port,
      const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _client = SkyleClient(_channel!);
    _setClient();
  }

  Future<void> _disconnectClients() async {
    calibration.stop();
    switchOptions.stop();
    await _channel?.terminate();
    _channel = null;
    _client = null;
    _setClient();
  }

  void _setClient() {
    calibration.client = client;
    gaze.client = client;
    positioning.client = client;
    options.client = client;
    version.client = client;
    profiles.client = client;
    switchOptions.client = client;
    reset.client = client;
  }
}
