//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/switch/switch.dart';
import '../../data/models/switch/switch_actions.dart';

/// Interface for the switch which can be connected to Skyle.
abstract class SwitchRepository {
  /// Starts a stream of [Switch] which can live until Skyle disconnects.
  ///
  /// Returns a [Stream] with either a [DataSuccess] or a [DataFailed] message indicating the stream failed.
  /// In case of a [DataSuccess] message containing a [Switch] indicating the current switch configuration.
  Stream<DataState<Switch>> start();

  /// Stops the [Switch] stream manually.
  void stop();

  /// Sets the [SwitchActions] of the [Switch]
  /// Returns a [Future] of the current [SwitchActions] with
  /// a [DataSuccess] or an [DataFailed] containing the description of an error.
  Future<DataState<SwitchActions>> setSwitch(SwitchActions switchActions);
}
