//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:logger/logger.dart';

import 'src/connectivity/connectivityprovider.dart';
import 'src/core/data_state.dart';
import 'src/core/exceptions.dart';
import 'src/data/repositories/calibration_repository_impl.dart';
import 'src/data/repositories/gaze_repository_impl.dart';
import 'src/data/repositories/positioning_repository_impl.dart';
import 'src/data/repositories/reset_repository_impl.dart';
import 'src/data/repositories/settings_repository_impl.dart';
import 'src/data/repositories/switch_repository_impl.dart';
import 'src/data/repositories/versions_repository_impl.dart';
import 'src/domain/repositories/calibration_repository.dart';
import 'src/domain/repositories/gaze_repository.dart';
import 'src/domain/repositories/positioning_repository.dart';
import 'src/domain/repositories/reset_repository.dart';
import 'src/domain/repositories/settings_repository.dart';
import 'src/domain/repositories/switch_repository.dart';
import 'src/domain/repositories/versions_repository.dart';
import 'src/generated/Skyle.proto/Skyle.pbgrpc.dart';

enum Connection { disconnected, connecting, connected }

class GRPCFailed {
  final String error;
  GRPCFailed({required this.error});
}

class ET {
  ClientChannelBase? _channel;
  ClientChannelBase? get channel => _channel;

  SkyleClient? _client;
  SkyleClient? get client => _client;

  ConnectivityProvider connectivityProvider = ConnectivityProvider();
  CalibrationRepository calibration = CalibrationRepositoryImpl();
  SettingsRepository settings = SettingsRepositoryImpl();
  VersionsRepository versions = VersionsRepositoryImpl();
  ResetRepository reset = ResetRepositoryImpl();
  GazeRepository gaze = GazeRepositoryImpl();
  PositioningRepository positioning = PositioningRepositoryImpl();
  SwitchRepository switchSettings = SwitchRepositoryImpl();

  Connection _connection = Connection.disconnected;
  Connection get connection => _connection;

  static Logger? logger;
  static String baseURL = 'skyle.local';
  static const _grpcPort = 50052;
  static const List<String> possibleIPs = ['10.0.0.2', '192.168.137.2'];
  static const _maxRetries = 10;

  final StreamController<Connection> _connectionStreamController = StreamController<Connection>.broadcast();
  late final Stream<Connection> connectionStream = _connectionStreamController.stream;

  ET();

  Future<void> connect() async {
    if (connectivityProvider.running) throw StillRunningException();
    print('Scanning for Skyle ethernet interface for possible IPs: $possibleIPs');
    connectivityProvider.start(_onConnectionMessageChanged);
    await for (final message in connectionStream) {
      if (message == Connection.connected || message == Connection.disconnected) break;
    }
  }

  Future<void> disconnect() async {
    if (!connectivityProvider.running) throw NotRunningException();
    connectivityProvider.stop();
    await softDisconnect();
  }

  Future<void> _onConnectionMessageChanged(ConnectionMessage message) async {
    if (message.connection == Connection.connecting && _connection == Connection.disconnected) {
      print('Interface connected: Try connecting Skyle: ${ET.baseURL}');
      ET.baseURL = message.url!;
      _connection = message.connection;
      _connectionStreamController.add(_connection);
      await trySoftReconnect();
    } else if (message.connection == Connection.disconnected && _connection != Connection.disconnected) {
      print('Skyle interface disconnected.');
      await softDisconnect();
    }
  }

  // TODO
  // Add async cancellation if called again.
  Future<void> trySoftReconnect() async {
    try {
      if (_connection == Connection.connected || _connection == Connection.disconnected) return;
      _createClient(url: ET.baseURL, port: ET._grpcPort);
      // ET.logger?.i('Connecting Skyle with base ip: ${ET.baseURL}...');
      print('Connecting Skyle with base ip: ${ET.baseURL}...');

      for (var i = 0; i < _maxRetries; i++) {
        try {
          // First set options client to make the initial call
          settings = SettingsRepositoryImpl(client: client);
          if (await settings.get() is DataFailed) throw NotConnectedException();
          // Set all clients
          _setClients();
          // Set the connection state and notify everyone
          _connection = Connection.connected;
          _connectionStreamController.add(_connection);
          // ET.logger?.i('Connected Skyle.');
          print('Connected Skyle.');
          break;
        } catch (error) {
          final milliseconds = 100 + 500 * i;
          ET.logger?.w('Warning in tryReconnect():', error, StackTrace.current);
          print('Warning in tryReconnect(): ${error.toString()}');
          ET.logger?.i('GRPC connection attempt ${i + 1}/$_maxRetries - Waiting ${milliseconds / 1000}s before retrying.');
          print('GRPC connection attempt ${i + 1}/$_maxRetries - Waiting ${milliseconds / 1000}s before retrying.');
          await Future.delayed(Duration(milliseconds: milliseconds));
        }
      }
      if (_connection == Connection.disconnected) {
        throw Exception('Could not excecute initial GRPC');
      }
    } catch (error) {
      ET.logger?.e('Skyle disconnected fatally:', error, StackTrace.current);
      await softDisconnect();
    }
  }

  void _createClient({required String url, required int port}) {
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

  Future<void> softDisconnect() async {
    try {
      ET.logger?.i('Disconnecting active Skyle grpcs...');
      print('Disconnecting active Skyle grpcs...');
      await calibration.abort();
      switchSettings.stop();
      await _channel?.terminate();
    } catch (error) {
      ET.logger?.e('Skyle disconnecting clients failed:', error, StackTrace.current);
    } finally {
      _channel = null;
      _client = null;
      _setClients();
      _connection = Connection.disconnected;
      _connectionStreamController.add(_connection);
      ET.logger?.i('Disconnected Skyle grpcs...');
      print('Disconnected Skyle grpcs...');
    }
  }

  void _setClients() {
    calibration = CalibrationRepositoryImpl(client: client);
    versions = VersionsRepositoryImpl(client: client);
    reset = ResetRepositoryImpl(client: client);
    gaze = GazeRepositoryImpl(client: client);
    positioning = PositioningRepositoryImpl(client: client);
    switchSettings = SwitchRepositoryImpl(client: client);
  }

  void dispose() {
    _connectionStreamController.close();
  }

  Future<void> testConnectClients({required String url, required int port}) async {
    _createClient(url: url, port: port);
    settings = SettingsRepositoryImpl(client: client);
    await settings.get();
    _setClients();
    _connection = Connection.connected;
    _connectionStreamController.add(_connection);
  }
}
