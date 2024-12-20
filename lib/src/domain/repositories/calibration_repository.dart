//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/calibration/calibration_message.dart';
import '../../data/models/calibration/calibration_points.dart';
import '../../data/models/settings/screen_sizes.dart';

/// Interface for calibrating Skyle.
abstract class CalibrationRepository {
  /// Starts a calibration which can be aborted with [abort] or finish by its own.
  ///
  /// Start a calibration with the amount of [points], specified [screenSizes] and
  /// the option of being a [stepped] calibration which requires to call [next] before each
  /// calibrated point.
  /// Returns a [Stream] with either a [DataSuccess] or a [DataFailed] message indicating the stream failed.
  /// In case of a [DataSuccess] message containing a [CalibrationMessage].
  Stream<DataState<CalibrationMessage>> calibrate(
    CalibrationPoints points, {
    ScreenSizes screenSizes = const ScreenSizes(),
    bool stepped = false,
    Set<int> orderOfCalibrationPoints,
  });

  /// Aborts a calibration started by [calibrate].
  Future<void> abort();

  /// Triggers the next calibration point in case [calibrate] was called with the stepped option
  /// being set to true.
  void next();

  /// Calculates the calibration point x-axis coordinate value from the [CalibrationPoints.array] id and the width
  /// of the screen in pixels.
  ///
  /// Receives an [id] which is a value of [CalibrationPoints.array] and the [width] of the screen.
  static double calcX(int id, double width) {
    final double offset = width * 0.08;
    final double temp = width * 0.84;
    final double ret = ((id % 3).toDouble()) * temp / 2.0 + offset;
    return ret;
  }

  /// Calculates the calibration point y-axis coordinate value from the [CalibrationPoints.array] id and the width
  /// of the screen in pixels.
  ///
  /// Receives an [id] which is a value of [CalibrationPoints.array], the [width] of the screen and the [height] of the screen.
  static double calcY(int id, double width, double height) {
    final double offset = width * 0.08 * 3.0 / 4.0;
    final double temp = height - offset * 2;
    final double ret = (id ~/ 3) * temp / 2.0 + offset;
    return ret;
  }
}
