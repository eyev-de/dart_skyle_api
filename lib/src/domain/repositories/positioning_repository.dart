//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:universal_platform/universal_platform.dart';

import '../../core/data_state.dart';
import '../../data/models/positioning/positioning_distance.dart';
import '../../data/models/positioning/positioning_eyes.dart';
import '../../data/models/positioning/positioning_message.dart';
import '../../data/models/positioning/positioning_quality.dart';
import '../../data/models/types.dart';

/// Interface for receiving the positioning stream.
abstract class PositioningRepository {
  static double widthSkyle2 = 1280;
  static double heightSkyle2 = 800;
  static double widthSkyle3 = 2472;
  static double heightSkyle3 = 2048;

  static double maxDistance = UniversalPlatform.isDesktop ? -15 : 0;
  static double minDistance = UniversalPlatform.isDesktop ? 35 : 40;

  static int closeUpperBoundaryiPad = 450;
  static int normalUpperBoundaryiPad = 750;

  static int closeUpperBoundaryDesktop = 500;
  static int normalUpperBoundaryDesktop = 800;

  /// Starts the positioning stream which lives until a disconnect happens.
  ///
  /// Returns a [Stream] with either a [DataSuccess] or a [DataFailed] message indicating the stream failed.
  /// In case of a [DataSuccess] message containing a [PositioningMessage] which contains of
  /// a [PositioningEyes] containing two [Point] objects, a [PositioningQuality] object, containing vertical,
  /// horizontal and a depth value indicating the users positioning quality, and a [PositioningDistance], which
  /// also indicates the users absence with [PositioningDistance.none].
  Stream<DataState<PositioningMessage>> start();

  // Stops the positioning stream manually
  Future<void> stop();
}
