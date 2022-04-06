//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'size.dart';

class ScreenSizes {
  final Size resolution;
  final Size? dimensions;
  ScreenSizes({
    required this.resolution,
    this.dimensions,
  });
  const ScreenSizes.create()
      : resolution = const Size(width: 1920, height: 1080),
        dimensions = null;
}
