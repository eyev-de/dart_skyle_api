//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'point.dart';

class CalibrationPoint {
  final Point coordinates;
  final int index;
  CalibrationPoint({required this.index, required this.coordinates});
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
}

class CalibrationQualityMessage extends CalibrationMessage {
  CalibrationQualityMessage({required CalibrationQuality quality}) : super(quality: quality);
}
