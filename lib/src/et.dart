//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:logger/logger.dart';

import '../api.dart';
import 'connectivity/connectivityprovider.dart';
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
import 'generated/Skyle.pbgrpc.dart';

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
    return const Size(width: 2464, height: 2064);
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

  /// Tries to reconnect the grpc connection. Is only needed after calling [softDisconnect]
  ///
  /// Accepts a new [url] and a new [grpcPort]. Should only be set if you really know what you are doing.
  Future<void> trySoftReconnect({String url = 'skyle.local', int grpcPort = 50051}) async {
    try {
      // Return immediately if we are already connected to avoid unnecessary resets.
      if (_connection == Connection.connected) return;
      // Update internal configuration.
      _grpcPort = grpcPort;
      ET.baseURL = url;

      logger?.i('Connecting Skyle with base ip: $url...');
      // Initialize the gRPC channel and the client. This also registers the listener on 'onConnectionStateChanged'.
      _createClient(url: url, port: ET._grpcPort);
      // Initialize the settings repository to make a test call.
      settings = SettingsRepositoryImpl(client: client);
      // Kickstart lazy gRPC channel. The listener in _createClient handles the connection state.
      unawaited(
        settings.get().timeout(const Duration(seconds: 1)).catchError((_) {
          // Ignore error; just waking up the channel
          return const DataFailed<Settings>('Ignored kickstart error');
        }),
      );
    } catch (e, st) {
      logger?.e('Skyle disconnected fatally:', error: e, stackTrace: st);
      await softDisconnect();
    }
  }

  void _createClient({required String url, required int port}) {
    // 1. Create channel
    _channel = GrpcOrGrpcWebClientChannel.toSingleEndpoint(host: url, port: port, transportSecure: false);
    // 2. Instantiate client immediately (required for _setClients)
    _client = SkyleClient(_channel!);
    // 3. Listen for status changes
    _channel!.onConnectionStateChanged.listen(
      (state) {
        logger?.i('--> gRPC connection state changed: $state, _connection: $_connection}');

        switch (state) {
          // Connection successfully established -> reload repositories with the active client
          case ConnectionState.ready:
            if (_connection != Connection.connected) {
              logger?.i('gRPC is ready. Initializing clients...');
              _setClients();
              _connection = Connection.connected;
              _connectionStreamController.add(_connection);
              logger?.i('Connected Skyle - Internal state set to connected.');
            }
            break;

          // Connection terminated
          case ConnectionState.shutdown:
            if (_connection != Connection.disconnected) {
              logger?.i('gRPC channel shutdown detected. Setting internal state to disconnected.');
              _connection = Connection.disconnected;
              _connectionStreamController.add(_connection);
            }
            break;

          // Temporary problems or connection establishment
          case ConnectionState.transientFailure:
          case ConnectionState.connecting:
          case ConnectionState.idle:
            // Set status to 'connecting' if we were not already connecting or connected
            if (_connection != Connection.connected && _connection != Connection.connecting) {
              logger?.i('gRPC reported $state. Setting internal state to connecting...');
              _connection = Connection.connecting;
              _connectionStreamController.add(_connection);
            } else if (_connection == Connection.connected && state == ConnectionState.transientFailure) {
              // Optional: Warn if we have a glitch while connected
              logger?.w('Warning: Transient failure while connected. Keeping connection alive for now.');
            }
            break;
        }
      },
    );
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
