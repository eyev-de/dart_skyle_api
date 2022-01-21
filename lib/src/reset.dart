//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../api.dart';

class Reset {
  SkyleClient? client;

  Future<bool> restartServices() async {
    try {
      if (client == null) throw NotConnectedException();
      final ResetMessage message = ResetMessage()..services = true;
      final StatusMessage status = await client!.reset(message);
      return status.success;
    } catch (error) {
      // Ignore
      ET.logger?.e('Error restarting services:', error, StackTrace.current);
    }
    return false;
  }

  Future<bool> restartDevice() async {
    try {
      if (client == null) throw NotConnectedException();
      final ResetMessage message = ResetMessage()..device = true;
      final StatusMessage status = await client!.reset(message);
      return status.success;
    } catch (error) {
      // Ignore
      ET.logger?.e('Error restarting device:', error, StackTrace.current);
    }
    return false;
  }

  Future<bool> resetData() async {
    try {
      if (client == null) throw NotConnectedException();
      final ResetMessage message = ResetMessage()..data = true;
      final StatusMessage status = await client!.reset(message);
      return status.success;
    } catch (error) {
      // Ignore
      ET.logger?.e('Error reseting data:', error, StackTrace.current);
    }
    return false;
  }
}
