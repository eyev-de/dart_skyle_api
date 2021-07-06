//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2021 eyeV GmbH. All rights reserved.
//

import 'package:grpc/grpc_connection_interface.dart';

import '../api.dart';

class Reset {
  SkyleClient? client;

  Future<bool> restartServices() async {
    try {
      if (client == null) throw Exception('Not connected');
      final ResetMessage message = ResetMessage()..services = true;
      final StatusMessage status = await client!.reset(message);
      return status.success;
    } catch (error) {
      // Ignore
    }
    return false;
  }

  Future<bool> restartDevice() async {
    try {
      if (client == null) throw Exception('Not connected');
      final ResetMessage message = ResetMessage()..device = true;
      final StatusMessage status = await client!.reset(message);
      return status.success;
    } catch (error) {
      // Ignore
    }
    return false;
  }

  Future<bool> resetData() async {
    try {
      if (client == null) throw Exception('Not connected');
      final ResetMessage message = ResetMessage()..data = true;
      final StatusMessage status = await client!.reset(message);
      return status.success;
    } catch (error) {
      // Ignore
    }
    return false;
  }
}
