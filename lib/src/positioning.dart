//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/service_api.dart';

import 'timer_provider.dart';
import '../api.dart';

// ignore: constant_identifier_names
enum PositioningState { None, Normal, Close, Far }

class PositioningData {
  final String data;
  PositioningData({required this.data});
}

class Positioning extends ChangeNotifier {
  static double width = 1280;
  static double height = 720;
  ClientChannelBase? channel;
  ResponseStream<PositioningMessage>? _stream;
  final _timerProvider = TimerProvider();

  PositioningState _state = PositioningState.None;
  PositioningState get state => _state;

  PositioningMessage _data = PositioningMessage().createEmptyInstance();
  PositioningMessage get data => _data;

  GRPCFailed? _error;
  GRPCFailed? get error => _error;

  Timer? _timer;

  Positioning();

  Future<void> start() async {
    try {
      if (_stream != null) {
        return;
      }
      if (channel == null) {
        return;
      }
      _stream = SkyleClient(channel!).positioning(Empty());
      _timer = createTimeoutTimer();
      await for (final PositioningMessage event in _stream!) {
        final PositioningMessage p = PositioningMessage()..mergeFromJson(event.writeToJson());
        _data = p;
        if ((data.hasLeftEye() || data.hasRightEye()) && !_timerProvider.fired) {
          if (_state != PositioningState.Normal) {
            _state = PositioningState.Normal;
          }
          _timerProvider.restartTimer(onFired: (fired) {
            if (_state != PositioningState.None) {
              _state = PositioningState.None;
              notifyListeners();
            }
          });
        }
        if (data.hasQualityDepth()) {
          _state = data.qualityDepth < -10
              ? PositioningState.Far
              : data.qualityDepth > 30
                  ? PositioningState.Close
                  : PositioningState.Normal;
        }
        _timer?.cancel();
        _timer = createTimeoutTimer();
        _error = null;
        notifyListeners();
      }
    } catch (error) {
      if (error is GrpcError && error.code == 1) return;
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
      await stop();
    }
  }

  Timer createTimeoutTimer() {
    return Timer(const Duration(seconds: 10), () async {
      await stop(force: true);
      await start();
    });
  }

  Future<void> stop({bool force = false}) async {
    if (!hasListeners || force) {
      _data = PositioningMessage().createEmptyInstance();
      await _stream?.cancel();
      _stream = null;
      _timer?.cancel();
    }
  }
}
