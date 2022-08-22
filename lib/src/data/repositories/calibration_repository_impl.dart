//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:grpc/grpc.dart';

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../domain/repositories/calibration_repository.dart';
import '../../generated/Skyle.pbgrpc.dart';
import '../models/calibration/calibration_message.dart';
import '../models/calibration/calibration_points.dart';
import '../models/settings/screen_sizes.dart';

class CalibrationRepositoryImpl extends CalibrationRepository {
  StreamController<calibControlMessages> control = StreamController<calibControlMessages>();
  ResponseStream<CalibMessages>? stream;
  SkyleClient? client;

  CalibrationRepositoryImpl({this.client});

  @override
  Stream<DataState<CalibrationMessage>> calibrate(
    CalibrationPoints points, {
    ScreenSizes screenSizes = const ScreenSizes(),
    bool stepped = false,
  }) async* {
    try {
      if (stream != null) throw StillStreamingException();
      if (client == null) throw NotConnectedException();
      control = StreamController<calibControlMessages>();
      stream = client!.calibrate(control.stream);
      final calibControlMessages message = (calibControlMessages()
        ..calibControl = (CalibControl()
          ..stepByStep = stepped
          ..calibrate = true
          ..numberOfPoints = points.value
          ..stopHID = true
          ..res = ScreenSizes.toScreenResolution(screenSizes)));
      control.add(message);
      final List<CalibrationPointQuality> qualities = [];
      await for (final CalibMessages event in stream!) {
        if (event.hasCalibPoint()) {
          final point = CalibrationPoint.fromCalibPoint(event.calibPoint);
          qualities.add(CalibrationPointQuality(point: point));
          yield DataSuccess(CalibrationPointMessage(point: point));
        } else if (event.hasCalibQuality()) {
          event.calibQuality.qualitys.asMap().forEach((i, e) {
            final index = qualities.indexWhere((element) => element.point.index == i);
            if (index != -1) qualities[index].quality = e;
          });
          yield DataSuccess(
            CalibrationQualityMessage(
              quality: CalibrationQuality(
                qualities: qualities,
                average: event.calibQuality.quality,
              ),
            ),
          );
        }
      }
    } on NotConnectedException catch (_) {
    } catch (error) {
      yield DataFailed(error.toString());
    } finally {
      stream = null;
    }
  }

  @override
  Future<void> abort() async {
    final calibControlMessages message = (calibControlMessages()..calibControl = (CalibControl()..abort = true));
    control.add(message);
    await stream?.cancel();
    stream = null;
  }

  @override
  void next() {
    final calibControlMessages message = (calibControlMessages()..calibConfirm = (CalibConfirm()..confirmed = true));
    control.add(message);
  }
}
