//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/types.dart';

/// Interface for receiving the gaze stream coordinates.
abstract class GazeRepository {
  /// Starts a gaze stream which can live until a disconnect happens.
  ///
  /// Returns a [Stream] with either a [DataSuccess] or a [DataFailed] message indicating the stream failed.
  /// In case of a [DataSuccess] message containing a [Point] indicating the combined gaze point.
  Stream<DataState<Point>> start();

  /// Stops the gaze stream manually.
  Future<void> stop();
}
