//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../generated/Skyle.proto/Skyle.pbgrpc.dart';

abstract class SwitchRepository {
  void start();
  void stop();
  Future<DataState<ButtonActions>> setButton(ButtonActions request);
}
