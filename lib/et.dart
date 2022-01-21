//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:logger/logger.dart';

import 'src/calibration.dart';
import 'src/connectivity/connectivityprovider.dart';
import 'src/cursor_calibration.dart';
import 'src/gaze.dart';
import 'src/generated/Skyle.proto/Skyle.pbgrpc.dart';
import 'src/options.dart';
import 'src/positioning.dart';
import 'src/profiles.dart';
import 'src/reset.dart';
import 'src/switchoptions.dart';
import 'src/version.dart';

enum Connection { disconnected, connecting, connected }

class GRPCFailed {
  final String error;
  GRPCFailed({required this.error});
}

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
  CursorCalibration cursorCalibration = CursorCalibration();

  static Logger? logger;

  Connection _connection = Connection.disconnected;

  Connection get connection => _connection;
  SkyleClient? get client => _client;

  static String baseURL = 'skyle.local';
  static const grpcPort = 50052;
  static const List<String> possibleBaseIPs = ['10.0.0.2', '192.168.137.2'];

  ET();

  ClientChannelBase? get channel => _channel;

  void startScanningForInterface() {
    connectivityProvider.start(_onConnectionMessageChanged);
  }

  void stopScanningForInterface() {
    connectivityProvider.stop();
    terminateClient();
  }

  Future<void> _onConnectionMessageChanged(ConnectionMessage message) async {
    if (message.connection == Connection.connecting && _connection == Connection.disconnected) {
      print('Try connecting Skyle: ${ET.baseURL}');
      ET.baseURL = message.url!;
      _connection = message.connection;
      notifyListeners();
      await tryReconnect();
    } else if (message.connection == Connection.disconnected && _connection != Connection.disconnected) {
      print('Skyle disconnected.');
      await terminateClient();
    }
  }

  // TODO
  // Add async cancellation if called again.
  Future<void> tryReconnect() async {
    try {
      if (_connection == Connection.connected || _connection == Connection.disconnected) return;
      createClient(url: ET.baseURL, port: ET.grpcPort);
      // ET.logger?.i('Connecting Skyle with base ip: ${ET.baseURL}...');

      const maxRetries = 10;
      for (var i = 0; i < maxRetries; i++) {
        try {
          // First set options client to make the initial call
          options.client = client;
          await options.initAsync();
          // Set all clients
          _setClient();
          // Set the connection state and notify everyone
          _connection = Connection.connected;
          notifyListeners();
          // Start switch and break the loop
          switchOptions.start();
          // ET.logger?.i('Connected Skyle.');
          print('Connected Skyle.');
          break;
        } catch (error) {
          final milliseconds = 100 + 500 * i;
          ET.logger?.w('Warning in tryReconnect():', error, StackTrace.current);
          ET.logger?.i('GRPC connection attempt ${i + 1}/$maxRetries - Waiting ${milliseconds / 1000}s before retrying.');
          await Future.delayed(Duration(milliseconds: milliseconds));
        }
      }
      if (_connection == Connection.disconnected) {
        throw Exception('Could not excecute initial GRPC');
      }
    } catch (error) {
      ET.logger?.e('Skyle disconnected fatally:', error, StackTrace.current);
      await terminateClient();
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
    _channel = GrpcOrGrpcWebClientChannel.grpc(
      url,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        // backoffStrategy: BackOffStrategy.defaultBackoffStrategy,
      ),
    );
    _client = SkyleClient(_channel!);
  }

  Future<void> terminateClient() async {
    try {
      // ET.logger?.i('Disconnecting active Skyle grpcs...');
      await calibration.stop();
      switchOptions.stop();
      await _channel?.terminate();
    } catch (error) {
      ET.logger?.e('Skyle disconnecting clients failed:', error, StackTrace.current);
    } finally {
      _channel = null;
      _client = null;
      _setClient();
      _connection = Connection.disconnected;
      notifyListeners();
      // ET.logger?.i('Disconnected Skyle grpcs...');
    }
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
    cursorCalibration.client = client;
  }
}
