//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:flutter/material.dart';

import '../api.dart';

class Version extends ChangeNotifier {
  SkyleClient? _client;
  set client(SkyleClient? value) {
    if (value == null) {
      _state = DeviceVersions.create();
      notifyListeners();
    }
    _client = value;
  }

  SkyleClient? get client => _client;

  DeviceVersions _state = DeviceVersions.create();
  GRPCFailed _error = GRPCFailed(error: '');

  DeviceVersions get state => _state;

  GRPCFailed get error => _error;

  Future<DeviceVersions> getStateAsync() async {
    try {
      if (client == null) throw NotConnectedException();
      final DeviceVersions versions = await client!.getVersions(Empty());
      if (_state != versions) {
        _state = versions;
        notifyListeners();
      }
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      ET.logger?.e('Error getting version information:', error, StackTrace.current);
      notifyListeners();
    }
    return _state;
  }
}
