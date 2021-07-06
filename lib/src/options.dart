//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:flutter/material.dart';
import 'package:grpc/grpc_connection_interface.dart';

import '../api.dart';

class OptionsStateNotifier extends ChangeNotifier {
  SkyleClient? client;
  Options _state = Options.create();
  GRPCFailed _error = GRPCFailed(error: '');

  Options get state => _state;

  GRPCFailed get error => _error;

  set state(Options value) {
    if (client == null) return;
    if (_state != value) {
      if (value.hasFilter()) {
        if (value.filter.gazeFilter > 33) value.filter.gazeFilter = 33;
        if (value.filter.fixationFilter > 33) value.filter.fixationFilter = 33;
        if (value.filter.gazeFilter < 3) value.filter.gazeFilter = 3;
        if (value.filter.fixationFilter < 3) value.filter.fixationFilter = 3;
      }
      _state.mergeFromJson(value.writeToJson());
      final OptionMessage req = OptionMessage()..options = _state;
      client!.configure(req).then((options) {
        _state = options;
      }).catchError((error) {
        _error = GRPCFailed(error: error.toString());
      }).whenComplete(notifyListeners);
    }
  }

  Future<Options> setStateAsync(Options value, {bool passError = false}) async {
    try {
      if (client == null) throw Exception('Not connected');
      _state.mergeFromJson(value.writeToJson());
      final req = OptionMessage()..options = _state;
      final options = await client!.configure(req);
      _state = options;
      notifyListeners();
    } catch (error) {
      if (error is GrpcError && passError) rethrow;
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
    return _state;
  }

  Future<Options> initAsync() async {
    try {
      return await setStateAsync(Options.create(), passError: true);
    } catch (error) {
      rethrow;
    }
  }

  void init() {
    state = Options.create();
  }

  Future<Options> stream({bool on = true}) async {
    final Options options = Options.fromJson(state.writeToJson())..stream = on;
    return setStateAsync(options);
  }

  Future<Options> autoPause({bool on = true}) async {
    final Options options = Options.fromJson(state.writeToJson())..enablePause = on;
    return setStateAsync(options);
  }

  Future<Options> standby({bool on = true}) async {
    final Options options = Options.fromJson(state.writeToJson())..enableStandby = on;
    return setStateAsync(options);
  }

  Future<Options> disableMouse({bool on = true}) async {
    final Options options = Options.fromJson(state.writeToJson())..disableMouse = on;
    return setStateAsync(options);
  }

  Future<Options> pause({bool on = true}) async {
    final Options options = Options.fromJson(state.writeToJson())..pause = on;
    return setStateAsync(options);
  }

  Future<Options> filter({int gazeFilter = 11, int fixationFilter = 5}) async {
    // ignore: parameter_assignments
    if (gazeFilter > 33) gazeFilter = 33;
    // ignore: parameter_assignments
    if (fixationFilter > 33) fixationFilter = 33;
    // ignore: parameter_assignments
    if (gazeFilter < 3) gazeFilter = 3;
    // ignore: parameter_assignments
    if (fixationFilter < 3) fixationFilter = 3;
    final FilterOptions filterOptions = FilterOptions()
      ..fixationFilter = fixationFilter
      ..gazeFilter = gazeFilter;
    final Options options = Options.fromJson(state.writeToJson())..filter = filterOptions;
    return setStateAsync(options);
  }

  Future<Options> iPadOptions({bool isOldiOS = true, bool isNotZommed = true}) async {
    final IPadOptions iPadOptions = IPadOptions()
      ..isOldiOS = isOldiOS
      ..isNotZommed = isNotZommed;
    final Options options = Options.fromJson(state.writeToJson())..iPadOptions = iPadOptions;
    return setStateAsync(options);
  }

  Future<Options> highPerformance({bool on = true}) async {
    final Options options = Options.fromJson(state.writeToJson())..hp = on;
    return setStateAsync(options);
  }

  Future<Options> setResolution({
    int width = 1920,
    int height = 1080,
    int? widthInMM,
    int? heightInMM,
  }) async {
    final Options options = Options.fromJson(state.writeToJson());
    if (widthInMM != null && heightInMM != null) {
      options.res = ScreenResolution(
        width: width,
        height: height,
        widthinMM: widthInMM,
        heightinMM: heightInMM,
      );
    } else {
      options.res = ScreenResolution(width: width, height: height);
    }
    return setStateAsync(options);
  }

  Future<Options> setHP({bool on = true}) async {
    final Options options = Options.fromJson(state.writeToJson())..hp = on;
    return setStateAsync(options);
  }
}
