//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

class Point {
  final double x;
  final double y;
  const Point({required this.x, required this.y});
  factory Point.zero() {
    return const Point(x: 0, y: 0);
  }
}
