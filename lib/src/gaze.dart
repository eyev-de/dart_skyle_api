//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

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

  Gaze() {
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
      _stream = client!.gaze(Empty());
      final stream = _stream!.timeout(Duration(seconds: 5), onTimeout: (sink) {
        sink.addError(TimeoutException());
      });
      await for (final Point event in stream) {
        _point.mergeFromJson(event.writeToJson());
        _error = null;
        notifyListeners();
      }
    } on StillStreamingException catch (_) {
    } on NotConnectedException catch (_) {
    } on TimeoutException catch (_) {
      _stream = null;
    } catch (error) {
      _stream = null;
      ET.logger?.e('Error in gaze stream:', error, StackTrace.current);
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
  }
}
