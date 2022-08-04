//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../data/models/settings/filter.dart';
import '../../data/models/settings/ipados.dart';
import '../../domain/repositories/settings_repository.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart';
import '../models/settings/screen_sizes.dart';
import '../models/settings/settings.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  SkyleClient? client;
  Options _state = Options.create();

  SettingsRepositoryImpl({this.client});

  Future<DataState<Settings>> _setStateAsync(Options value) async {
    try {
      if (client == null) throw NotConnectedException();
      _state.mergeFromJson(value.writeToJson());
      final req = OptionMessage()..options = _state;
      final options = await client!.configure(req);
      _state = options;
      return DataSuccess(Settings.fromOptions(options));
    } catch (error) {
      // ET.logger?.e('Error in options', error, StackTrace.current);
      return DataFailed(error.toString());
    }
  }

  @override
  Future<DataState<Settings>> enablePause({bool on = true}) {
    final Options options = Options.fromJson(_state.writeToJson())..enablePause = on;
    return _setStateAsync(options);
  }

  @override
  Future<DataState<Settings>> disableMouse({bool on = true}) {
    final Options options = Options.fromJson(_state.writeToJson())..disableMouse = on;
    return _setStateAsync(options);
  }

  @override
  Future<DataState<Settings>> get() {
    return _setStateAsync(Options.create());
  }

  @override
  Future<DataState<Settings>> pause({bool on = true}) {
    final Options options = Options.fromJson(_state.writeToJson())..pause = on;
    return _setStateAsync(options);
  }

  @override
  Future<DataState<Settings>> setFilter({Filter filter = const Filter()}) {
    final FilterOptions filterOptions = FilterOptions()
      ..fixationFilter = filter.fixation
      ..gazeFilter = filter.gaze;
    final Options options = Options.fromJson(_state.writeToJson())..filter = filterOptions;
    return _setStateAsync(options);
  }

  @override
  Future<DataState<Settings>> setIPadOS({IPadOS iPadOS = const IPadOS(isOld: true, isNotZommed: true)}) {
    final IPadOptions iPadOptions = IPadOptions()
      ..isOldiOS = iPadOS.isOld
      ..isNotZommed = iPadOS.isNotZommed;
    final Options options = Options.fromJson(_state.writeToJson())..iPadOptions = iPadOptions;
    return _setStateAsync(options);
  }

  @override
  Future<DataState<Settings>> setResolution({ScreenSizes screenSizes = const ScreenSizes()}) {
    final Options options = Options.fromJson(_state.writeToJson());
    if (screenSizes.dimensions != null) {
      options.res = ScreenResolution(
        width: screenSizes.resolution.width.round(),
        height: screenSizes.resolution.height.round(),
        widthinMM: screenSizes.dimensions!.width.round(),
        heightinMM: screenSizes.dimensions!.height.round(),
      );
    } else {
      options.res = ScreenResolution(width: screenSizes.resolution.width.round(), height: screenSizes.resolution.height.round());
    }
    return _setStateAsync(options);
  }

  @override
  Future<DataState<Settings>> standby({bool on = true}) {
    final Options options = Options.fromJson(_state.writeToJson())..enableStandby = on;
    return _setStateAsync(options);
  }

  @override
  Future<DataState<Settings>> video({bool on = true}) {
    final Options options = Options.fromJson(_state.writeToJson())..stream = on;
    return _setStateAsync(options);
  }
}
