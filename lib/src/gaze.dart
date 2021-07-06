//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/service_api.dart';

import '../api.dart';

class GazeData {
  final String data;
  GazeData({required this.data});
}

class Gaze extends ChangeNotifier {
  SkyleClient? client;
  ResponseStream<Point>? _stream;

  final Point _point = Point();
  Point get point => _point;

  GRPCFailed? _error;
  GRPCFailed? get error => _error;

  Timer? _timer;

  Gaze();

  Future<void> start() async {
    try {
      if (_stream != null) {
        return;
      }
      if (client == null) {
        return;
      }
      _stream = client!.gaze(Empty());
      _timer = createTimeoutTimer();
      await for (final Point event in _stream!) {
        _point.mergeFromJson(event.writeToJson());
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
      await _stream?.cancel();
      _stream = null;
      _timer?.cancel();
    }
  }
}
