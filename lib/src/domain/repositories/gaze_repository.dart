//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../entities/point.dart';

abstract class GazeRepository {
  Stream<DataState<Point>> start();
  Future<void> stop();
}
