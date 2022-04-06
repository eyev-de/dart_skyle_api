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

import 'src/connectivity/connectivityprovider.dart';
import 'src/data/repositories/calibration_repository_impl.dart';
import 'src/data/repositories/gaze_repository_impl.dart';
import 'src/data/repositories/positioning_repository_impl.dart';
import 'src/data/repositories/reset_repository_impl.dart';
import 'src/data/repositories/settings_repository_impl.dart';
import 'src/data/repositories/versions_repository_impl.dart';
import 'src/domain/repositories/calibration_repository.dart';
import 'src/domain/repositories/gaze_repository.dart';
import 'src/domain/repositories/positioning_repository.dart';
import 'src/domain/repositories/reset_repository.dart';
import 'src/domain/repositories/settings_repository.dart';
import 'src/domain/repositories/versions_repository.dart';
import 'src/generated/Skyle.proto/Skyle.pbgrpc.dart';

enum Connection { disconnected, connecting, connected }

class GRPCFailed {
  final String error;
  GRPCFailed({required this.error});
}

class ET extends ChangeNotifier {
  ClientChannelBase? _channel;

  SkyleClient? _client;
  ConnectivityProvider connectivityProvider = ConnectivityProvider();
  CalibrationRepository calibration = CalibrationRepositoryImpl();
  SettingsRepository settings = SettingsRepositoryImpl();
  VersionsRepository versions = VersionsRepositoryImpl();
  ResetRepository reset = ResetRepositoryImpl();
  GazeRepository gaze = GazeRepositoryImpl();
  PositioningRepository positioning = PositioningRepositoryImpl();
  // OptionsStateNotifier options = OptionsStateNotifier();
  // Calibration calibration = Calibration();
  // Gaze gaze = Gaze();
  // Positioning positioning = Positioning();
  // Version version = Version();
  // Profiles profiles = Profiles();
  // SwitchOptions switchOptions = SwitchOptions();
  // Reset reset = Reset();
  // CursorCalibration cursorCalibration = CursorCalibration();

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
          settings = SettingsRepositoryImpl(client: client);
          await settings.get();
          // Set all clients
          _init();
          // Set the connection state and notify everyone
          _connection = Connection.connected;
          notifyListeners();
          // Start switch and break the loop
          // switchOptions.start();
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
    settings = SettingsRepositoryImpl(client: client);
    await settings.get();
    _init();
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
      await calibration.abort();
      // switchOptions.stop();
      await _channel?.terminate();
    } catch (error) {
      ET.logger?.e('Skyle disconnecting clients failed:', error, StackTrace.current);
    } finally {
      _channel = null;
      _client = null;
      _init();
      _connection = Connection.disconnected;
      notifyListeners();
      // ET.logger?.i('Disconnected Skyle grpcs...');
    }
  }

  void _init() {
    calibration = CalibrationRepositoryImpl(client: client);
    versions = VersionsRepositoryImpl(client: client);
    reset = ResetRepositoryImpl(client: client);
    gaze = GazeRepositoryImpl(client: client);
    positioning = PositioningRepositoryImpl(client: client);
    // profiles.client = client;
    // switchOptions.client = client;
    // cursorCalibration.client = client;
  }
}
