//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/types.dart';

/// Interface for receiving the trigger stream.
abstract class TriggerRepository {
  /// Starts a trigger stream which can live until a disconnect happens.
  ///
  /// Returns a [Stream] with either a [DataSuccess] or a [DataFailed] message indicating the stream failed.
  /// In case of a [DataSuccess] message containing a [Trigger].
  Stream<DataState<Trigger>> start();

  /// Stops the trigger stream manually.
  Future<void> stop();
}
