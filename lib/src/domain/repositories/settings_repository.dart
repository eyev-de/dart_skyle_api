//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../entities/filter.dart';
import '../entities/ipados.dart';
import '../entities/screen_sizes.dart';
import '../entities/settings.dart';

abstract class SettingsRepository {
  Future<DataState<Settings>> get();

  Future<DataState<Settings>> video({bool on = true});
  Future<DataState<Settings>> autoPause({bool on = true});
  Future<DataState<Settings>> standby({bool on = true});
  Future<DataState<Settings>> disableMouse({bool on = true});
  Future<DataState<Settings>> pause({bool on = true});
  Future<DataState<Settings>> setFilter({Filter filter = const Filter.create()});
  Future<DataState<Settings>> setIPadOS({IPadOS iPadOS = const IPadOS(isOld: true, isNotZommed: true)});
  Future<DataState<Settings>> setResolution({ScreenSizes screenSizes = const ScreenSizes.create()});
}
