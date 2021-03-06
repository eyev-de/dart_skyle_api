//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

import 'timer_provider.dart';
import '../api.dart';

enum PositioningState { None, Normal, Close, Far }
// 55cm = 25
// 65cm = 0
// 72cm = -10
// 48cm = 40

class PositioningData {
  final String data;
  PositioningData({required this.data});
}

class Positioning extends ChangeNotifier {
  static double width = 1280;
  static double height = 720;
  static double maxDistance = Platform.isIOS ? 0 : -15;
  static double minDistance = Platform.isIOS ? 40 : 35;
  SkyleClient? client;
  ResponseStream<PositioningMessage>? _stream;
  final _timerProvider = TimerProvider();

  PositioningState _state = PositioningState.None;
  PositioningState get state => _state;

  PositioningMessage _data = PositioningMessage().createEmptyInstance();
  PositioningMessage get data => _data;

  GRPCFailed? _error;
  GRPCFailed? get error => _error;

  Timer? _timer;

  Positioning() {
    start();
  }

  void start() {
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) async {
      _start();
    });
  }

  Future<void> stop() async {
    _timer?.cancel();
    await _stream?.cancel();
    _stream = null;
  }

  Future<void> _start() async {
    try {
      if (_stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      _stream = client!.positioning(Empty());
      final stream = _stream!.timeout(Duration(seconds: 5), onTimeout: (sink) {
        sink.addError(TimeoutException());
      });
      await for (final PositioningMessage event in stream) {
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
          _state = data.qualityDepth < maxDistance
              ? PositioningState.Far
              : data.qualityDepth > minDistance
                  ? PositioningState.Close
                  : PositioningState.Normal;
        }
        _error = null;
        notifyListeners();
      }
    } on StillStreamingException catch (_) {
    } on NotConnectedException catch (_) {
    } on TimeoutException catch (_) {
      _stream = null;
    } catch (error) {
      _stream = null;
      ET.logger?.e('Error in positioning stream:', error, StackTrace.current);
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
  }
}
