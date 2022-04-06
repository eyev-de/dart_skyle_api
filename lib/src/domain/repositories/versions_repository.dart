//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../entities/versions.dart';

abstract class VersionsRepository {
  Future<DataState<Versions>> get();
}
