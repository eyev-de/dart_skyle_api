//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../core/data_state.dart';
import '../../data/models/versions/versions.dart';

/// Interface for the software versions and other information of Skyle.
abstract class VersionsRepository {
  /// Returns a [Future] which either contains a [DataSuccess] or a [DataFailed].
  /// In case of [DataSuccess], a [Versions] object is returned with the current
  /// versions information and other information of Skyle. In case of [DataFailed] a
  /// [String] is returned containing the errors description.
  Future<DataState<Versions>> get();
}
