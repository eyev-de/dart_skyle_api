//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:skyle_api/src/test/mjpeg_test_server.dart';

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
import 'src/test/skyle_service.dart';

String baseURL = !kIsWeb
    ? Platform.isAndroid
        ? '10.0.0.2'
        : 'skyle.local'
    : '127.0.0.1';
String baseIP = !kIsWeb
    ? Platform.isAndroid || Platform.isIOS
        ? '10.0.0.1'
        : '192.168.137.1'
    : '127.0.0.1';

enum Connection { connected, disconnected }

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

  Connection _state = Connection.disconnected;

  Connection get state => _state;
  SkyleClient? get client => _client;

  ET();

  ClientChannelBase? get channel => _channel;

  void startScanningForInterface() {
    connectivityProvider.start(_onConnectionChanged);
  }

  void stopScanningForInterface() {
    connectivityProvider.stop();
  }

  Future<void> _onConnectionChanged(state) async {
    if (state == Connection.connected) {
      try {
        _connectClients(url: baseURL, port: 50052);
        for (var i = 0; i < 20; i++) {
          try {
            await options.initAsync();
            _state = state;
            notifyListeners();
            switchOptions.start();
            break;
          } catch (error) {
            await Future.delayed(Duration(milliseconds: 1000 + 1000 * i));
          }
        }
        if (_state == Connection.disconnected) throw Exception('Could not excecute initial GRPC');
      } catch (error) {
        _state = Connection.disconnected;
        await _disconnectClients();
        notifyListeners();
      }
    } else {
      await _disconnectClients();
      _state = state;
      notifyListeners();
    }
  }

  Future<void> testConnectClients({required String url, required int port}) async {
    _connectClients(url: url, port: port);
    await options.initAsync();
    _state = Connection.connected;
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
    await positioning.stop(force: true);
    await gaze.stop(force: true);
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

class SkyleTestClient {
  final et = ET();

  Future<void> main(List<String> args) async {
    et.testConnectClients(url: 'localhost', port: 8001);
  }
}

class SkyleTestServer {
  final service = SkyleService();
  late Server server;
  MJPEGTestServer? mjpegTestServer;

  SkyleTestServer({String? pathToJPEGs}) {
    server = Server([service]);
    if (pathToJPEGs != null) mjpegTestServer = MJPEGTestServer(path: pathToJPEGs);
  }

  Future<void> main(List<String> args) async {
    await server.serve(address: 'localhost', port: 8001, shared: true);
    mjpegTestServer?.main(args);
  }
}
