//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'point.dart';

enum PositioningDistance { none, normal, close, far }

class PositioningQuality {
  final int horizontal;
  final int vertical;
  final int depth;
  PositioningQuality({required this.horizontal, required this.vertical, required this.depth});
}

class PositioningEyes {
  final Point left;
  final Point right;
  PositioningEyes({required this.left, required this.right});
}

class PositioningData {
  final PositioningEyes eyes;
  final PositioningQuality quality;

  const PositioningData({
    required this.eyes,
    required this.quality,
  });
}
