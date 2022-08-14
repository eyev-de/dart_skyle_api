//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../generated/Skyle.pb.dart' as grpc;

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
class Point with _$Point {
  const factory Point({
    required double x,
    required double y,
  }) = _Point;

  factory Point.fromJson(Map<String, Object?> json) => _$PointFromJson(json);
  factory Point.fromPoint(grpc.Point point) {
    return Point(x: point.x, y: point.y);
  }

  factory Point.zero() {
    return const Point(x: 0, y: 0);
  }
}
