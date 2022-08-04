//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:io';

import '../../core/data_state.dart';
import '../../data/models/point.dart';
import '../../data/models/positioning/positioning_distance.dart';
import '../../data/models/positioning/positioning_eyes.dart';
import '../../data/models/positioning/positioning_message.dart';
import '../../data/models/positioning/positioning_quality.dart';

/// Interface for receiving the positioning stream.
abstract class PositioningRepository {
  static double width = 1280;
  static double height = 800;
  static double maxDistance = Platform.isIOS ? 0 : -15;
  static double minDistance = Platform.isIOS ? 40 : 35;

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
