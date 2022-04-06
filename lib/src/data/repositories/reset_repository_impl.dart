//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../core/exceptions.dart';
import '../../domain/repositories/reset_repository.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart';

class ResetRepositoryImpl implements ResetRepository {
  SkyleClient? client;
  ResetRepositoryImpl({this.client});

  @override
  Future<DataState<bool>> restartServices() async {
    try {
      if (client == null) throw NotConnectedException();
      final ResetMessage message = ResetMessage()..services = true;
      final StatusMessage status = await client!.reset(message);
      return DataSuccess(status.success);
    } catch (error) {
      // Ignore
      // ET.logger?.e('Error restarting services:', error, StackTrace.current);
      return DataFailed(error.toString());
    }
  }

  @override
  Future<DataState<bool>> restartDevice() async {
    try {
      if (client == null) throw NotConnectedException();
      final ResetMessage message = ResetMessage()..device = true;
      final StatusMessage status = await client!.reset(message);
      return DataSuccess(status.success);
    } catch (error) {
      // Ignore
      // ET.logger?.e('Error restarting device:', error, StackTrace.current);
      return DataFailed(error.toString());
    }
  }

  @override
  Future<DataState<bool>> resetData() async {
    try {
      if (client == null) throw NotConnectedException();
      final ResetMessage message = ResetMessage()..data = true;
      final StatusMessage status = await client!.reset(message);
      return DataSuccess(status.success);
    } catch (error) {
      // Ignore
      // ET.logger?.e('Error reseting data:', error, StackTrace.current);
      return DataFailed(error.toString());
    }
  }
}
