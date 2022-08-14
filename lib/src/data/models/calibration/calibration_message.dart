//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../../generated/Skyle.pb.dart' as grpc;
import '../point.dart';

class CalibrationPoint {
  final Point coordinates;
  final int index;
  CalibrationPoint({required this.index, required this.coordinates});
  factory CalibrationPoint.fromCalibPoint(grpc.CalibPoint point) {
    return CalibrationPoint(coordinates: Point(x: point.currentPoint.x, y: point.currentPoint.y), index: point.count);
  }
}

class CalibrationPointQuality {
  CalibrationPoint point;
  double quality;
  CalibrationPointQuality({required this.point, this.quality = 0});
}

class CalibrationQuality {
  double average;
  final List<CalibrationPointQuality> qualities;
  CalibrationQuality({this.average = 0, required this.qualities});
}

abstract class CalibrationMessage {
  final CalibrationPoint? point;
  final CalibrationQuality? quality;
  CalibrationMessage({this.point, this.quality});
}

class CalibrationPointMessage extends CalibrationMessage {
  CalibrationPointMessage({required CalibrationPoint point}) : super(point: point);
  factory CalibrationPointMessage.fromCalibPoint(grpc.CalibPoint calibPoint) {
    return CalibrationPointMessage(point: CalibrationPoint.fromCalibPoint(calibPoint));
  }
}

class CalibrationQualityMessage extends CalibrationMessage {
  CalibrationQualityMessage({required CalibrationQuality quality}) : super(quality: quality);
}
