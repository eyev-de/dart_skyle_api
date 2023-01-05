//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/binocular_gaze.dart';

/// Interface for receiving the gaze stream coordinates.
abstract class RawGazeRepository {
  /// Starts a raw gaze stream which can live until a disconnect happens.
  ///
  /// Returns a [Stream] with either a [DataSuccess] or a [DataFailed] message indicating the stream failed.
  /// In case of a [DataSuccess] message containing a [BinocularGaze] indicating the gaze points of the left eye and the right eye.
  Stream<DataState<BinocularGaze>> start();

  /// Stops the gaze stream manually.
  Future<void> stop();
}
