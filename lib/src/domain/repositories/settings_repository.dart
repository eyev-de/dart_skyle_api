//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/settings/filter.dart';
import '../../data/models/settings/ipad_model.dart';
import '../../data/models/settings/ipados.dart';
import '../../data/models/settings/screen_sizes.dart';
import '../../data/models/settings/settings.dart';

/// Interface for the settings of Skyle.
abstract class SettingsRepository {
  /// Gets the current [Settings].
  ///
  /// Returns a [Future] which either contains a [DataSuccess] or a [DataFailed].
  /// In case of [DataSuccess], a [Settings] object is returned with the current
  /// settings configuration of Skyle. In case of [DataFailed] a [String] is returned
  /// containing the errors description.
  Future<DataState<Settings>> get();

  /// Sets the video stream setting and behaves like [get].
  Future<DataState<Settings>> video({bool on = true});

  /// Sets the autoPause setting and behaves like [get].
  ///
  /// If [enablePause] is on, the user can switch off the HID stream by looking into the
  /// camera placed in the center of Skyle for a couple of seconds.
  /// Also [pause] can be triggered manually.
  Future<DataState<Settings>> enablePause({bool on = true});

  /// Sets the pause setting and behaves like [get].
  ///
  /// If [pause] is on, the HID stream is swiched off.
  Future<DataState<Settings>> pause({bool on = true});

  /// Sets the standby setting and behaves like [get].
  ///
  /// If [standby] is on, Skyle will go into standby mode when the iPad is locked / not reachable.
  Future<DataState<Settings>> standby({bool on = true});

  /// Sets the HID stream setting and behaves like [get].
  ///
  /// If [disableMouse] is on, the HID stream is swiched off.
  Future<DataState<Settings>> disableMouse({bool on = true});

  /// Sets the [Filter] settings and behaves like [get].
  Future<DataState<Settings>> setFilter({Filter filter = const Filter()});

  /// Sets the [iPadOS] settings and behaves like [get].
  Future<DataState<Settings>> setIPadOS({IPadOS iPadOS = const IPadOS(isOld: true, isNotZoomed: true, iPadModel: IPadModel.iPad13_10)});

  /// Sets the [ScreenSizes] and behaves like [get].
  Future<DataState<Settings>> setResolution({ScreenSizes screenSizes = const ScreenSizes()});
}
