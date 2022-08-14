//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';

/// Interface for resetting Skyle.
abstract class ResetRepository {
  Future<DataState<bool>> restartServices();
  Future<DataState<bool>> restartDevice();
  Future<DataState<bool>> resetData();
}
