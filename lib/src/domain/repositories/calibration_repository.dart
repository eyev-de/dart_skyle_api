//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../entities/calibration_message.dart';
import '../entities/calibration_points.dart';
import '../entities/screen_sizes.dart';

/// Interface for calibrating Skyle.
abstract class CalibrationRepository {
  /// Start a calibration with the amount of [CalibrationPoints], specified [ScreenSizes] and
  /// the option of being a [stepped] calibration which requires to call [next] before each
  /// calibrated point.
  Stream<DataState<CalibrationMessage>> calibrate(
    CalibrationPoints points, {
    ScreenSizes screenSizes = const ScreenSizes.create(),
    bool stepped = false,
  });

  /// Aborts a calibration started by [calibrate].
  Future<void> abort();

  /// Triggers the next calibration point in case [calibrate] was called with the stepped option
  /// being set to true.
  void next();

  /// Calculates the calibration point x-axis coordinate value from the [CalibrationPointsExtension.array] id and the width
  /// of the screen in pixels.
  static double calcX(int id, double width) {
    final double offset = width * 0.08;
    final double temp = width * 0.84;
    final double ret = ((id % 3).toDouble()) * temp / 2.0 + offset;
    return ret;
  }

  /// Calculates the calibration point y-axis coordinate value from the [CalibrationPointsExtension.array] id and the width
  /// of the screen in pixels.
  static double calcY(int id, double width, double height) {
    final double offset = width * 0.08 * 3.0 / 4.0;
    final double temp = height - offset * 2;
    final double ret = (id ~/ 3) * temp / 2.0 + offset;
    return ret;
  }
}
