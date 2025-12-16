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
import '../../generated/Skyle.pbgrpc.dart';
import '../models/settings/ipad_model.dart';
import '../models/settings/screen_sizes.dart';
import '../models/settings/settings.dart';
import '../models/settings/tracking_mode.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  SkyleClient? client;
  Options? _state;

  SettingsRepositoryImpl({this.client});

  Future<DataState<Settings>> _setStateAsync({Options? options}) async {
    try {
      if (client == null) throw NotConnectedException();
      final req = OptionMessage();
      if (options != null && _state != null) {
        _state!.mergeFromJson(options.writeToJson());
        req.options = _state!;
      }
      final ret = await client!.configure(req);
      _state = ret;
      return DataSuccess(Settings.fromOptions(ret));
    } catch (error) {
      // ET.logger?.e('Error in options', error, StackTrace.current);
      return DataFailed(error.toString());
    }
  }

  @override
  Future<DataState<Settings>> enablePause({bool on = true}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson())..enableAutoPause = on;
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> disableMouse({bool on = true}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson())..disableMouse = on;
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> get() {
    return _setStateAsync();
  }

  @override
  Future<DataState<Settings>> pause({bool on = true}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson())..enablePause = on;
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> setFilter({Filter filter = const Filter()}) async {
    if (_state == null) await get();
    final FilterOptions filterOptions = FilterOptions()
      ..fixationFilter = filter.fixation
      ..gazeFilter = filter.gaze;
    final Options options = Options.fromJson(_state!.writeToJson())..filter = filterOptions;
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> setIPadOS({IPadOS iPadOS = const IPadOS(isOld: true, isNotZoomed: true, iPadModel: IPadModel.iPad13_10)}) async {
    if (_state == null) await get();
    final IPadOptions iPadOptions = IPadOptions();
    if (iPadOS.isOld != null) iPadOptions.isOldiOS = iPadOS.isOld!;
    if (iPadOS.isNotZoomed != null) iPadOptions.isNotZoomed = iPadOS.isNotZoomed!;
    if (iPadOS.iPadModel != null) iPadOptions.model = iPadOS.iPadModel!.toIPadOptionsIPadModel();
    final Options options = Options.fromJson(_state!.writeToJson())..iPadOptions = iPadOptions;
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> setResolution({ScreenSizes screenSizes = const ScreenSizes()}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson());
    if (screenSizes.dimensions != null) {
      options.res = ScreenResolution(
        width: screenSizes.resolution.width.round(),
        height: screenSizes.resolution.height.round(),
        widthInMM: screenSizes.dimensions!.width.round(),
        heightInMM: screenSizes.dimensions!.height.round(),
      );
    } else {
      options.res = ScreenResolution(width: screenSizes.resolution.width.round(), height: screenSizes.resolution.height.round());
    }
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> standby({bool on = true}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson())..enableAutoStandby = on;
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> video({bool on = true}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson())..enableVideoStream = on;
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> setTrackingMode({TrackingMode trackingMode = TrackingMode.both}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson())..eyeUsage = trackingMode.toIPadOptionsEyeUseModel();
    return _setStateAsync(options: options);
  }

  @override
  Future<DataState<Settings>> trackingDetails({bool on = true}) async {
    if (_state == null) await get();
    final Options options = Options.fromJson(_state!.writeToJson())..enableTrackingDetails = on;
    return _setStateAsync(options: options);
  }
}
