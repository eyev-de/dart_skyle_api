//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../entities/positioning_message.dart';

abstract class PositioningRepository {
  Stream<DataState<PositioningMessage>> start();
  Future<void> stop();
}
