//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/service_api.dart';

import '../api.dart';
import '../et.dart';
import 'generated/Skyle.proto/Skyle.pbgrpc.dart';

enum CalibrationPoints { one, two, five, nine }

extension CalibrationPointsExtension on CalibrationPoints {
  int get value {
    switch (this) {
      case CalibrationPoints.one:
        return 1;
      case CalibrationPoints.two:
        return 2;
      case CalibrationPoints.five:
        return 5;
      case CalibrationPoints.nine:
        return 9;
    }
  }

  static CalibrationPoints fromInt(int value) {
    switch (value) {
      case 1:
        return CalibrationPoints.one;
      case 2:
        return CalibrationPoints.two;
      case 5:
        return CalibrationPoints.five;
      default:
        return CalibrationPoints.nine;
    }
  }

  List<int> get array {
    switch (this) {
      case CalibrationPoints.one:
        return [4];
      case CalibrationPoints.two:
        return [0, 8];
      case CalibrationPoints.five:
        return [0, 2, 4, 6, 8];
      case CalibrationPoints.nine:
        return [0, 1, 2, 3, 4, 5, 6, 7, 8];
    }
  }
}

class Calibration {
  StreamController<calibControlMessages> control = StreamController<calibControlMessages>();
  ResponseStream<CalibMessages>? stream;
  SkyleClient? client;
  Calibration();

  static double calcX(int id, double width) {
    final double offset = width * 0.08;
    final double temp = width * 0.84;
    final double ret = ((id % 3).toDouble()) * temp / 2.0 + offset;
    return ret;
  }

  static double calcY(int id, double width, double height) {
    final double offset = width * 0.08 * 3.0 / 4.0;
    final double temp = height - offset * 2;
    final double ret = (id ~/ 3) * temp / 2.0 + offset;
    return ret;
  }

  Future<void> startFake({
    int width = 1920,
    int height = 1080,
    CalibrationPoints points = CalibrationPoints.nine,
    required void Function(CalibMessages event) onData,
    required void Function(GRPCFailed event) onError,
  }) async {
    for (final int item in [0, 1, 2, 3, 4, 5, 6, 7, 8]) {
      await Future.delayed(const Duration(milliseconds: 500));
      final Point p = Point()
        ..x = calcX(item, width.toDouble())
        ..y = calcY(item, width.toDouble(), height.toDouble());
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
    CalibrationPoints points = CalibrationPoints.nine,
    bool stepped = false,
    required void Function(CalibMessages event) onData,
    required void Function(GRPCFailed event) onError,
  }) async {
    try {
      if (client == null) throw NotConnectedException();
      control = StreamController<calibControlMessages>();
      stream = client!.calibrate(control.stream);
      final calibControlMessages message = (calibControlMessages()
        ..calibControl = (CalibControl()
          ..stepByStep = stepped
          ..calibrate = true
          ..numberOfPoints = points.value
          ..stopHID = true
          ..res = (ScreenResolution()
            ..width = width
            ..height = height)));
      control.add(message);
      await for (final CalibMessages event in stream!) {
        onData(event);
      }
    } on NotConnectedException catch (_) {
    } catch (error) {
      ET.logger?.e('Error in calibration:', error, StackTrace.current);
      if (error is GrpcError && error.code == 1) return;
      onError(GRPCFailed(error: error.toString()));
    }
  }

  void next() {
    final calibControlMessages message = (calibControlMessages()..calibConfirm = (CalibConfirm()..confirmed = true));
    control.add(message);
  }

  Future<void> stop() async {
    final calibControlMessages message = (calibControlMessages()..calibControl = (CalibControl()..abort = true));
    control.add(message);
    await stream?.cancel();
  }
}
