//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:flutter/material.dart';
import 'package:grpc/grpc_connection_interface.dart';

import '../api.dart';

class Version extends ChangeNotifier {
  ClientChannelBase? channel;
  DeviceVersions _state = DeviceVersions.create();
  GRPCFailed _error = GRPCFailed(error: '');

  DeviceVersions get state => _state;

  GRPCFailed get error => _error;

  Future<DeviceVersions> getStateAsync() async {
    try {
      if (channel == null) throw Exception('Not connected');
      final DeviceVersions versions = await SkyleClient(channel!).getVersions(Empty());
      if (_state != versions) {
        _state = versions;
        notifyListeners();
      }
    } catch (error) {
      _error = GRPCFailed(error: error.toString());
      notifyListeners();
    }
    return _state;
  }
}
