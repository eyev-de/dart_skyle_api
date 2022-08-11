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

import 'connectivity/connectivityprovider.dart';
import 'core/data_state.dart';
import 'core/exceptions.dart';
import 'data/repositories/calibration_repository_impl.dart';
import 'data/repositories/gaze_repository_impl.dart';
import 'data/repositories/positioning_repository_impl.dart';
import 'data/repositories/profiles_repository_imp.dart';
import 'data/repositories/reset_repository_impl.dart';
import 'data/repositories/settings_repository_impl.dart';
import 'data/repositories/switch_repository_impl.dart';
import 'data/repositories/versions_repository_impl.dart';
import 'domain/repositories/calibration_repository.dart';
import 'domain/repositories/gaze_repository.dart';
import 'domain/repositories/positioning_repository.dart';
import 'domain/repositories/profiles_repository.dart';
import 'domain/repositories/reset_repository.dart';
import 'domain/repositories/settings_repository.dart';
import 'domain/repositories/switch_repository.dart';
import 'domain/repositories/versions_repository.dart';
import 'generated/Skyle.pbgrpc.dart';
import 'test/test_server.dart';

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

  ConnectivityProvider _connectivityProvider = ConnectivityProvider();
  CalibrationRepository calibration = CalibrationRepositoryImpl();
  SettingsRepository settings = SettingsRepositoryImpl();
  VersionsRepository versions = VersionsRepositoryImpl();
  ResetRepository reset = ResetRepositoryImpl();
  GazeRepository gaze = GazeRepositoryImpl();
  PositioningRepository positioning = PositioningRepositoryImpl();
  SwitchRepository switchSettings = SwitchRepositoryImpl();
  ProfilesRepository profiles = ProfilesRepositoryImpl();

  Connection _connection = Connection.disconnected;
  Connection get connection => _connection;

  static Logger? logger;
  static const String baseURL = 'skyle.local';
  static int _grpcPort = 50052;
  static List<String> possibleIPs = ['10.0.0.2', '192.168.137.2'];
  static const _maxRetries = 10;

  final StreamController<Connection> _connectionStreamController = StreamController<Connection>.broadcast();
  late final Stream<Connection> connectionStream = _connectionStreamController.stream;

  ET();

  /// Starts the connection process of Skyle.
  ///
  /// First the ethernet interfaces are scanned for the right IP address. If the correct IP address is found,
  /// the grpc client is created. One API call is tested until the grpc library does not throw an exception anymore.
  /// This function blocks until Skyle is connected but it can also be called and not awaited which results in an async re/connection cycle.
  /// Accepts [additionalIps] to be added to scan for an ET and a new [grpcPort]. Should only be set if you really know what you are doing.
  Future<void> connect({List<String> additionalIps = const [], int grpcPort = 50052}) async {
    if (_connectivityProvider.running) throw StillRunningException();
    possibleIPs.addAll(additionalIps);
    _grpcPort = grpcPort;
    print('Scanning for Skyle ethernet interface for possible IPs: $possibleIPs');
    _connectivityProvider.start(_onConnectionMessageChanged);
    await for (final message in connectionStream) {
      if (message == Connection.connected || message == Connection.disconnected) break;
    }
  }

  /// Disconnects Skyle and shuts down the reconnection cycle.
  ///
  /// This should be called if you want to reconfigure a completely new connection.
  Future<void> disconnect() async {
    if (!_connectivityProvider.running) throw NotRunningException();
    _connectivityProvider.stop();
    await softDisconnect();
  }

  Future<void> _onConnectionMessageChanged(ConnectionMessage message) async {
    if (message.connection == Connection.connecting && _connection == Connection.disconnected) {
      print('Interface connected: Try connecting Skyle: ${ET.baseURL}');
      _connection = message.connection;
      _connectionStreamController.add(_connection);
      await trySoftReconnect(baseUrl: message.url ?? ET.baseURL);
    } else if (message.connection == Connection.disconnected && _connection != Connection.disconnected) {
      print('Skyle interface disconnected.');
      await softDisconnect();
    }
  }

  /// TODO(krjw-eyev):  Add async cancellation if called again.
  /// Trys to reconnect the grpc connection. Is only needed after calling [softDisconnect]
  ///
  /// Accepts a new [baseURL] and a new [grpcPort]. Should only be set if you really know what you are doing.
  Future<void> trySoftReconnect({String baseUrl = ET.baseURL, int grpcPort = 50052}) async {
    try {
      if (_connection == Connection.connected || _connection == Connection.disconnected) return;
      _grpcPort = grpcPort;
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

  /// Disconnects only the grpc client and makes it unusable.
  ///
  /// All connections will throw a [NotConnectedException].
  /// To reconnect the grpcs call [trySoftReconnect]
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
    profiles = ProfilesRepositoryImpl(client: client);
  }

  /// Disposes the instance of [ET] completely.
  void dispose() {
    disconnect();
    _connectionStreamController.close();
  }

  /// Simulates a connection. This is only used for tests with the [TestServer] which is located in lib/src/test/test_server.dart
  Future<void> testConnectClients({required String url, required int port}) async {
    _connectivityProvider.running = true;
    _connection = Connection.connecting;
    _connectionStreamController.add(_connection);
    await Future.delayed(const Duration(milliseconds: 200));
    _createClient(url: url, port: port);
    settings = SettingsRepositoryImpl(client: client);
    await settings.get();
    await Future.delayed(const Duration(milliseconds: 200));
    _setClients();
    _connection = Connection.connected;
    _connectionStreamController.add(_connection);
  }
}
