//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart';

enum TrackingMode {
  none,
  both,
  left,
  right;

  static TrackingMode fromOptionsEyeUseModel(Options_eyeUse trackingMode) {
    return TrackingMode.values.firstWhere((element) => element.name.toLowerCase() == trackingMode.name.toLowerCase(), orElse: () => TrackingMode.none);
  }

  Options_eyeUse toIPadOptionsEyeUseModel() {
    return Options_eyeUse.values.firstWhere((element) => element.name.toLowerCase() == name.toLowerCase(), orElse: () => Options_eyeUse.Both);
  }
}
