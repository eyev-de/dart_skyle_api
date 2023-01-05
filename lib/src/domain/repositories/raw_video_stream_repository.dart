//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/raw_image.dart';

/// Interface for receiving the raw video stream.
abstract class RawVideoStreamRepository {
  /// Starts a raw video stream which can live until a disconnect happens.
  ///
  /// Returns a [Stream] with either a [DataSuccess] or a [DataFailed] message indicating the stream failed.
  /// In case of a [DataSuccess] message containing a [RawImage] indicating the width [int], height [int] and raw
  /// byte data [List] of [int] of the image.
  Stream<DataState<RawImage>> start();

  /// Stops the raw video stream manually.
  Future<void> stop();
}
