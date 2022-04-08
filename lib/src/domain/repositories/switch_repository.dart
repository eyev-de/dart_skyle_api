//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../entities/switch.dart';

abstract class SwitchRepository {
  Stream<DataState<Switch>> start();
  void stop();
  Future<DataState<SwitchActions>> setButton(SwitchActions switchActions);
}
