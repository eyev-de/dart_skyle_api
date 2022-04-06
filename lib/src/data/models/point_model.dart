//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../domain/entities/point.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart' as grpc;

class PointModel extends Point {
  PointModel({required double x, required double y}) : super(x: x, y: y);
  factory PointModel.fromPoint(grpc.Point point) {
    return PointModel(x: point.x, y: point.y);
  }
}
