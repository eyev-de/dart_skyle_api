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
      await terminateClient();
      _connection = message.connection;
      notifyListeners();
    }
  }

  Future<void> tryReconnect() async {
    try {
      ET.logger?.i('Connecting Skyle with base ip: ${ET.baseURL}...');
      createClient(url: ET.baseURL, port: 50052);
      const maxRetries = 30;
      for (var i = 0; i < maxRetries; i++) {
        try {
          // First set options client to make the initial call
          options.client = client;
          await options.initAsync();
          // If call succeeds, connect all clients
          _setClient();
          // Set the connection state and notify everyone
          _connection = Connection.connected;
          notifyListeners();
          // Start switch and break the loop
          switchOptions.start();
          ET.logger?.i('Connected Skyle.');
          break;
        } catch (error) {
          final milliseconds = 1000 + 1000 * i;
          ET.logger?.w('Warning in tryReconnect():', error, StackTrace.current);
          ET.logger?.i('GRPC connection attempt $i/$maxRetries - Waiting ${milliseconds / 1000}s before retrying.');
          await Future.delayed(Duration(milliseconds: milliseconds));
        }
      }
      if (_connection == Connection.disconnected) throw Exception('Could not excecute initial GRPC');
    } catch (error) {
      ET.logger?.e('Skyle disconnected fatally:', error, StackTrace.current);
      _connection = Connection.disconnected;
      await terminateClient();
      notifyListeners();
    }
  }

  Future<void> testConnectClients({required String url, required int port}) async {
    createClient(url: url, port: port);
    options.client = client;
    await options.initAsync();
    _setClient();
    _connection = Connection.connected;
    notifyListeners();
  }

  void createClient({required String url, required int port}) {
    _channel = ClientChannelWrapper().getGRPCClient(
      url,
      port,
      const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        backoffStrategy: BackOffStrategy.defaultBackoffStrategy,
      ),
    );
    _client = SkyleClient(_channel!);
  }

  Future<void> terminateClient() async {
    try {
      ET.logger?.i('Disconnectiong active Skyle grpcs...');
      calibration.stop();
      switchOptions.stop();
      await _channel?.terminate();
      _channel = null;
      _client = null;
      _setClient();
      ET.logger?.i('Disconnected Skyle grpcs...');
    } catch (error) {
      ET.logger?.e('Skyle disconnecting clients failed:', error, StackTrace.current);
    }
  }

  void _setClient() {
    calibration.client = client;
    gaze.client = client;
    positioning.client = client;
    version.client = client;
    profiles.client = client;
    switchOptions.client = client;
    reset.client = client;
  }
}
