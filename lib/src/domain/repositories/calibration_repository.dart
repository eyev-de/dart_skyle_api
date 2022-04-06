//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../entities/calibration_message.dart';
import '../entities/calibration_points.dart';
import '../entities/screen_sizes.dart';

abstract class CalibrationRepository {
  Stream<DataState<CalibrationMessage>> calibrate(
    CalibrationPoints points, {
    ScreenSizes screenSizes = const ScreenSizes.create(),
    bool stepped = false,
  });
  Future<void> abort();
  void next();
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
}
