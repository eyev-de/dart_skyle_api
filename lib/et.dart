//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

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

String baseURL = !kIsWeb
    ? Platform.isAndroid
        ? '10.0.0.2'
        : 'skyle.local'
    : '127.0.0.1';
String baseIP = !kIsWeb
    ? Platform.isAndroid
        ? '10.0.0.1'
        : '192.168.137.1'
    : '127.0.0.1';
int port = 50052;

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
        _connectClients();
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

  void _connectClients() {
    _channel = ClientChannelWrapper().getGRPCClient(
      baseURL,
      // "skyle.local",
      port,
      const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    _client = SkyleClient(_channel!);
    _setChannel();
  }

  Future<void> _disconnectClients() async {
    await positioning.stop(force: true);
    await gaze.stop(force: true);
    calibration.stop();
    switchOptions.stop();
    await _channel?.shutdown();
    _channel = null;
    _client = null;
    _setChannel();
  }

  void _setChannel() {
    calibration.channel = _channel;
    gaze.channel = _channel;
    positioning.channel = _channel;
    options.channel = _channel;
    version.channel = _channel;
    profiles.channel = _channel;
    switchOptions.channel = _channel;
    reset.channel = _channel;
  }
}
