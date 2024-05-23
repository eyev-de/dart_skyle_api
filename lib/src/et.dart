//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:logger/logger.dart';

import 'connectivity/connectivityprovider.dart';
import 'core/data_state.dart';
import 'core/exceptions.dart';
import 'data/models/size.dart';
import 'data/repositories/calibration_repository_impl.dart';
import 'data/repositories/gaze_repository_impl.dart';
import 'data/repositories/positioning_repository_impl.dart';
import 'data/repositories/profiles_repository_imp.dart';
import 'data/repositories/raw_video_stream_repository_impl.dart';
import 'data/repositories/reset_repository_impl.dart';
import 'data/repositories/settings_repository_impl.dart';
import 'data/repositories/switch_repository_impl.dart';
import 'data/repositories/trigger_repository_impl.dart';
import 'data/repositories/versions_repository_impl.dart';
import 'data/repositories/video_stream_repository_impl.dart';
import 'domain/repositories/calibration_repository.dart';
import 'domain/repositories/gaze_repository.dart';
import 'domain/repositories/positioning_repository.dart';
import 'domain/repositories/profiles_repository.dart';
import 'domain/repositories/raw_video_stream_repository.dart';
import 'domain/repositories/reset_repository.dart';
import 'domain/repositories/settings_repository.dart';
import 'domain/repositories/switch_repository.dart';
import 'domain/repositories/trigger_repository.dart';
import 'domain/repositories/versions_repository.dart';
import 'domain/repositories/video_stream_repository.dart';
import 'generated/Skyle.pbgrpc.dart';
import 'test/test_server.dart';

enum Connection { disconnected, connecting, connected }

class GRPCFailed {
  final String error;
  GRPCFailed({required this.error});
}

class ET {
  GrpcOrGrpcWebClientChannel? _channel;
  GrpcOrGrpcWebClientChannel? get channel => _channel;

  SkyleClient? _client;
  SkyleClient? get client => _client;

  final ConnectivityProvider _connectivityProvider = ConnectivityProvider();
  CalibrationRepository calibration = CalibrationRepositoryImpl();
  SettingsRepository settings = SettingsRepositoryImpl();
  VersionsRepository versions = VersionsRepositoryImpl();
  ResetRepository reset = ResetRepositoryImpl();
  GazeRepository gaze = GazeRepositoryImpl();
  PositioningRepository positioning = PositioningRepositoryImpl();
  SwitchRepository switchSettings = SwitchRepositoryImpl();
  final VideoStreamRepository stream = VideoStreamRepositoryImpl();
  ProfilesRepository profiles = ProfilesRepositoryImpl();
  TriggerRepository trigger = TriggerRepositoryImpl();
  RawVideoStreamRepository video = RawVideoStreamRepositoryImpl();

  Size resolution(int generation) {
    if (generation == 2) {
      return const Size(width: 1280, height: 800);
    }
    return const Size(width: 2472, height: 2048);
  }

  Connection _connection = Connection.disconnected;
  Connection get connection => _connection;

  static Logger? logger;
  static String baseURL = 'skyle.local';
  static int _grpcPort = 50051;
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
  /// The Skyle Integration Kit [grpcPort] is 50051, for Skyle for Windows and Skyle for iPad use 50052. The default is 50051.
  Future<void> connect({List<String> additionalIps = const [], int grpcPort = 50051}) async {
    if (_connectivityProvider.state != ConnectivityProviderState.disposed) throw StillRunningException();
    possibleIPs.addAll(additionalIps);
    _grpcPort = grpcPort;
    logger?.i('Scanning for Skyle ethernet interface for possible IPs: $possibleIPs');
    await _connectivityProvider.start(_onConnectionMessageChanged);
    await for (final message in connectionStream) {
      if (message == Connection.connected || message == Connection.disconnected) break;
    }
  }

  /// Disconnects Skyle and shuts down the reconnection cycle.
  ///
  /// This should be called if you want to reconfigure a completely new connection.
  Future<void> disconnect() async {
    if (_connectivityProvider.state != ConnectivityProviderState.running) throw NotRunningException();
    if (_connection == Connection.connecting) {
      // Handles disconnect request when in the process of connecting the grpcs
      // TODO(krjw-eyev): Handle disconnect request here. Send async cancellation to trySoftReconnect().
    }
    await _connectivityProvider.stop();
    logger?.i('Disconnected Skyle...');
  }

  Future<void> _onConnectionMessageChanged(ConnectionMessage message) async {
    if (message.connection == Connection.connecting && _connection == Connection.disconnected) {
      logger?.i('Interface connected: Try connecting Skyle: ${message.url ?? ET.baseURL}');
      _connection = message.connection;
      _connectionStreamController.add(_connection);
      await trySoftReconnect(url: message.url ?? ET.baseURL, grpcPort: _grpcPort);
    } else if (message.connection == Connection.disconnected) {
      await softDisconnect();
      _connection = message.connection;
      _connectionStreamController.add(_connection);
      logger?.i('Skyle interface disconnected.');
    }
  }

  /// TODO(krjw-eyev): Add async cancellation if called again.
  /// Trys to reconnect the grpc connection. Is only needed after calling [softDisconnect]
  ///
  /// Accepts a new [url] and a new [grpcPort]. Should only be set if you really know what you are doing.
  Future<void> trySoftReconnect({String url = 'skyle.local', int grpcPort = 50051}) async {
    try {
      if (_connection == Connection.connected || _connection == Connection.disconnected) return;
      _grpcPort = grpcPort;
      ET.baseURL = url;
      _createClient(url: url, port: ET._grpcPort);
      logger?.i('Connecting Skyle with base ip: $url...');

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
          ET.logger?.i('Connected Skyle.');
          break;
        } catch (error) {
          final milliseconds = 100 + 500 * i;
          logger?.w('Warning in tryReconnect():', error: error, stackTrace: StackTrace.current);
          logger?.i('GRPC connection attempt ${i + 1}/$_maxRetries - Waiting ${milliseconds / 1000}s before retrying.');
          await Future.delayed(Duration(milliseconds: milliseconds));
        }
      }
      if (_connection == Connection.disconnected) {
        throw Exception('Could not excecute initial GRPC');
      }
    } catch (e, st) {
      logger?.e('Skyle disconnected fatally:', error: e, stackTrace: st);
      await softDisconnect();
    }
  }

  void _createClient({required String url, required int port}) {
    _channel = GrpcOrGrpcWebClientChannel.toSingleEndpoint(
      host: url,
      port: port,
      transportSecure: false,
    );
    _client = SkyleClient(_channel!);
  }

  /// Disconnects only the grpc client and makes it unusable.
  ///
  /// All connections will throw a [NotConnectedException].
  /// To reconnect the grpcs call [trySoftReconnect]
  Future<void> softDisconnect() async {
    try {
      logger?.i('Disconnecting active Skyle grpcs...');
      await calibration.abort();
      switchSettings.stop();
      await _channel?.terminate();
    } catch (e, st) {
      logger?.e('Skyle disconnecting clients failed:', error: e, stackTrace: st);
    } finally {
      _channel = null;
      _client = null;
      _setClients();
      _connection = Connection.connecting;
      _connectionStreamController.add(_connection);
      logger?.i('Disconnected Skyle grpcs...');
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
    trigger = TriggerRepositoryImpl(client: client);
    video = RawVideoStreamRepositoryImpl(client: client);
  }

  /// Disposes the instance of [ET] completely.
  Future<void> dispose() async {
    await disconnect();
    await _connectionStreamController.close();
  }

  /// Simulates a connection. This is only used for tests with the [TestServer] which is located in lib/src/test/test_server.dart
  Future<void> testConnectClients({required String url, required int port}) async {
    _connectivityProvider.state = ConnectivityProviderState.running;
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
