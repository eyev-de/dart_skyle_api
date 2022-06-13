//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';

import 'point.dart';

enum PositioningDistance { none, normal, close, far }

class PositioningQuality {
  final int horizontal;
  final int vertical;
  final int depth;
  PositioningQuality({required this.horizontal, required this.vertical, required this.depth});
  PositioningQuality.fromJson(Map<String, dynamic> json)
      : horizontal = json['horizontal'],
        vertical = json['vertical'],
        depth = json['depth'];

  Map<String, dynamic> toJson() => {
        'horizontal': horizontal,
        'vertical': vertical,
        'depth': depth,
      };
  factory PositioningQuality.zero() {
    return PositioningQuality(horizontal: 0, vertical: 0, depth: 0);
  }
}

class PositioningEyes {
  final Point left;
  final Point right;
  PositioningEyes({required this.left, required this.right});
  PositioningEyes.fromJson(Map<String, dynamic> json)
      : left = jsonDecode(json['left']),
        right = jsonDecode(json['right']);

  Map<String, dynamic> toJson() => {
        'left': jsonEncode(left),
        'right': jsonEncode(right),
      };
  factory PositioningEyes.zero() {
    return PositioningEyes(left: Point.zero(), right: Point.zero());
  }
}
