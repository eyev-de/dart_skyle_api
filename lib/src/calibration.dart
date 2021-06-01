//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/service_api.dart';

import '../et.dart';
import 'generated/Skyle.proto/Skyle.pbgrpc.dart';

class Calibration {
  StreamController<calibControlMessages> control = StreamController<calibControlMessages>();
  ResponseStream<CalibMessages>? stream;
  ClientChannelBase? channel;
  Calibration();

  static double _calcX(int id, double width) {
    final double offset = width * 0.08;
    final double temp = width * 0.84;
    final double ret = ((id % 3).toDouble()) * temp / 2.0 + offset;
    return ret;
  }

  static double _calcY(int id, double width, double height) {
    final double offset = width * 0.08 * 3.0 / 4.0;
    final double temp = height - offset * 2;
    final double ret = (id ~/ 3) * temp / 2.0 + offset;
    return ret;
  }

  Future<void> startFake({
    int width = 1920,
    int height = 1080,
    int points = 9,
    required void Function(CalibMessages event) onData,
    required void Function(GRPCFailed event) onError,
  }) async {
    for (final int item in [0, 1, 2, 3, 4, 5, 6, 7, 8]) {
      await Future.delayed(const Duration(milliseconds: 500));
      final Point p = Point()
        ..x = _calcX(item, width.toDouble())
        ..y = _calcY(item, width.toDouble(), height.toDouble());
      final CalibPoint pp = CalibPoint()..currentPoint = p;
      final CalibMessages message = CalibMessages()..calibPoint = pp;
      onData(message);
    }
    await Future.delayed(const Duration(milliseconds: 300));
    final CalibQuality q = CalibQuality()..quality = 5.0;
    q.qualitys.addAll([5.0, 3.5, 5.0, 2.5, 5.0, 5.0, 1.0, 1.5, 5.0]);
    final CalibMessages message = CalibMessages()..calibQuality = q;
    onData(message);
  }

  Future<void> start({
    int width = 1920,
    int height = 1080,
    int points = 9,
    bool stepped = false,
    required void Function(CalibMessages event) onData,
    required void Function(GRPCFailed event) onError,
  }) async {
    try {
      control = StreamController<calibControlMessages>();
      stream = SkyleClient(channel!).calibrate(control.stream);
      final calibControlMessages message = (calibControlMessages()
        ..calibControl = (CalibControl()
          ..stepByStep = stepped
          ..calibrate = true
          ..numberOfPoints = points
          ..stopHID = true
          ..res = (ScreenResolution()
            ..width = width
            ..height = height)));
      control.add(message);
      await for (final CalibMessages event in stream!) {
        if (event is CalibMessages) {
          onData(event);
        }
      }
    } catch (error) {
      if (error is GrpcError && error.code == 1) return;
      onError(GRPCFailed(error: error.toString()));
    }
  }

  void next() {
    final calibControlMessages message = (calibControlMessages()..calibConfirm = (CalibConfirm()..confirmed = true));
    control.add(message);
  }

  void stop() {
    final calibControlMessages message = (calibControlMessages()..calibControl = (CalibControl()..abort = true));
    control.add(message);
    stream?.cancel();
  }
}
