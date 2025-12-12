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

  Connection _connection = Connection.disconnected;
  Connection get connection => _connection;

  final StreamController<Connection> _connectionStreamController = StreamController<Connection>.broadcast();
  late final Stream<Connection> connectionStream = _connectionStreamController.stream;

  static Logger? logger;
  static String baseURL = 'skyle.local';
  static int _grpcPort = 50051;
  static List<String> possibleIPs = ['10.0.0.2', '192.168.137.2'];

  /// Number of retries for the connection kickstart loop (approx. 10 seconds total duration).
  static const int _kickstartRetries = 20;

  /// Duration to wait for the iOS network stack to stabilize after a hot-plug event.
  static const Duration _hotplugDelay = Duration(seconds: 2);

  ET();

  Size resolution(int generation) {
    if (generation == 2) return const Size(width: 1280, height: 800);
    return const Size(width: 2464, height: 2064);
  }

  /// Starts the connection process of Skyle.
  ///
  /// First the ethernet interfaces are scanned for the right IP address. If the correct IP address is found, the grpc client is created.
  /// One API call is tested until the grpc library does not throw an exception anymore.
  /// This function blocks until Skyle is connected but it can also be called and not awaited which results in an async re/connection cycle.
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

  /// Callback used by ConnectivityProvider when network interfaces change.
  Future<void> _onConnectionMessageChanged(ConnectionMessage message) async {
    if (message.connection == Connection.connecting && _connection == Connection.disconnected) {
      logger?.i('Interface detected: ${message.url}. Waiting for network stack to settle...');
      _connection = message.connection;
      _connectionStreamController.add(_connection);
      // iOS needs 1-3 seconds to assign a routing-capable IP address after hot-plugging.
      await Future.delayed(_hotplugDelay);
      logger?.i('Starting Skyle connection to: ${message.url ?? ET.baseURL}');
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
      _grpcPort = grpcPort;
      ET.baseURL = url;
      logger?.i('Connecting Skyle with base ip: $url...');
      // Create channel and client
      _createClient(url: url, port: ET._grpcPort);
      // Initialize the settings repository to make test calls
      settings = SettingsRepositoryImpl(client: client);
      // Force connection establishment -> start a background loop to wake up the channel.
      unawaited(_kickstartConnectionLoop());
    } catch (e, st) {
      logger?.e('Skyle disconnected fatally:', error: e, stackTrace: st);
      await softDisconnect();
    }
  }

  /// Repeatedly attempts to contact the server to wake up the gRPC channel.
  /// This is necessary because the initial socket connection might fail if the IP isn't fully routed yet.
  Future<void> _kickstartConnectionLoop() async {
    logger?.d('Starting connection handshake loop...');
    for (int i = 0; i < _kickstartRetries; i++) {
      // Stop trying if we successfully connected
      if (_connection == Connection.connected) return;
      try {
        // Short timeout. If this succeeds, the onConnectionStateChanged listener handles the rest.
        await settings.get().timeout(const Duration(milliseconds: 500));
        return;
      } catch (e) {
        // Ignore errors, wait briefly and try again -> time to negotiate DHCP/Link-Local.
        await Future.delayed(const Duration(milliseconds: 500));
      }
    }
    logger?.w('Connection Kickstart gave up after $_kickstartRetries attempts.');
  }

  void _createClient({required String url, required int port}) {
    // Create channel
    _channel = GrpcOrGrpcWebClientChannel.toSingleEndpoint(host: url, port: port, transportSecure: false);
    // Instantiate client immediately (required for _setClients)
    _client = SkyleClient(_channel!);
    // Listen for status changes
    _channel!.onConnectionStateChanged.listen(
      (state) {
        logger?.i('-> gRPC state: $state | Internal state: $_connection');
        switch (state) {
          // Connection successfully established -> reload repositories with the active client
          case ConnectionState.ready:
            if (_connection != Connection.connected) {
              logger?.i('gRPC is ready. Initializing clients...');
              _setClients();
              _connection = Connection.connected;
              _connectionStreamController.add(_connection);
            }
            break;
          // Connection terminated
          case ConnectionState.shutdown:
            if (_connection != Connection.disconnected) {
              _connection = Connection.disconnected;
              _connectionStreamController.add(_connection);
            }
            break;
          // Temporary problems or connection establishment
          case ConnectionState.transientFailure:
          case ConnectionState.connecting:
            if (_connection != Connection.connected && _connection != Connection.connecting) {
              _connection = Connection.connecting;
              _connectionStreamController.add(_connection);
            }
            break;
          // Channel went to sleep
          case ConnectionState.idle:
            // If we are in the process of connecting but the channel went idle (gave up), we must force a wakeup call.
            if (_connection == Connection.connecting) {
              // Fire and forget a call to wake up the channel. We ignore the error as we only care about triggering the state change.
              unawaited(
                settings.get().timeout(const Duration(milliseconds: 500)).catchError((_) {
                  return const DataFailed<Settings>('Ignored wakeup error');
                }),
              );
            }
            // Standard behavior if we weren't trying to connect
            else if (_connection != Connection.connected && _connection != Connection.connecting) {
              _connection = Connection.connecting;
              _connectionStreamController.add(_connection);
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

  /// Simulates a connection. This is only used for tests with the [TestServer].
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
