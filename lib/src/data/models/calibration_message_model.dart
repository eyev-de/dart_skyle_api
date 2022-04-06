//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

// import '../../core/extensions.dart';
import '../../domain/entities/calibration_message.dart';
import '../../domain/entities/point.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart' as grpc;

class CalibrationPointMessageModel extends CalibrationMessage {
  CalibrationPointMessageModel({CalibrationPoint? point}) : super(point: point);
  factory CalibrationPointMessageModel.fromCalibPoint(grpc.CalibPoint calibPoint) {
    return CalibrationPointMessageModel(point: CalibrationPointModel.fromCalibPoint(calibPoint));
  }
}

class CalibrationPointModel extends CalibrationPoint {
  CalibrationPointModel({required int index, required Point coordinates}) : super(index: index, coordinates: coordinates);
  factory CalibrationPointModel.fromCalibPoint(grpc.CalibPoint point) {
    return CalibrationPointModel(coordinates: Point(x: point.currentPoint.x, y: point.currentPoint.y), index: point.count);
  }
}
