//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:flutter/material.dart';

import '../api.dart';

class GazeData {
  final String data;
  GazeData({required this.data});
}

class Gaze extends ChangeNotifier {
  SkyleClient? client;
  Stream<Point>? _stream;

  final Point _point = Point();
  Point get point => _point;

  GRPCFailed? _error;
  GRPCFailed? get error => _error;

  late final Timer _timer;

  Gaze() {
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) async {
      _start();
    });
  }

  Future<void> _start() async {
    try {
      // Already streaming
      if (_stream != null) {
        return;
      }
      // Disconnected
      if (client == null) {
        return;
      }
      _stream = client!.gaze(Empty()).timeout(Duration(seconds: 5), onTimeout: (sink) {
        sink.addError(TimeoutException());
      });
      await for (final Point event in _stream!) {
        _point.mergeFromJson(event.writeToJson());
        _error = null;
        notifyListeners();
      }
    } on TimeoutException catch (_) {
      _stream = null;
      return;
    } catch (error) {
      _stream = null;
      ET.logger?.e('Error in gaze stream:', error, StackTrace.current);
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
  }
}
