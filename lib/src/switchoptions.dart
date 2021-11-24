//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'dart:async';

import 'package:flutter/material.dart';

import '../api.dart';

class SwitchOptions extends ChangeNotifier {
  SkyleClient? client;
  Button _state = Button().createEmptyInstance();
  GRPCFailed _error = GRPCFailed(error: '');

  Button get state => _state;

  GRPCFailed get error => _error;

  Timer? _timer;

  void start() {
    // Maybe limit?
    // if (_timer == null || _timer != null && !_timer!.isActive)
    _timer = Timer.periodic(const Duration(milliseconds: 500), (t) async {
      try {
        await _getStateAsync();
      } catch (error) {
        if (state.isPresent) {
          state.isPresent = false;
          notifyListeners();
        }
      }
    });
  }

  void stop() {
    _timer?.cancel();
  }

  Future<Button> _getStateAsync() async {
    try {
      if (client == null) throw NotConnectedException();
      final Button ret = await client!.getButton(Empty());
      if (_state != ret) {
        _state = ret;
        notifyListeners();
      }
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      ET.logger?.e(error, StackTrace.current);
      notifyListeners();
    }
    return _state;
  }

  Future<bool> setButton(ButtonActions request) async {
    try {
      if (client == null) throw NotConnectedException();
      final ButtonActions ret = await client!.setButton(request);
      if (_state.buttonActions != ret) {
        _state.buttonActions = ret;
        notifyListeners();
      }
      return true;
    } catch (error) {
      ET.logger?.e(error, StackTrace.current);
      return false;
    }
  }
}
