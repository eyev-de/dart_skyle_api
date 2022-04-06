//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'positioning_data.dart';

abstract class PositioningMessage {
  final PositioningData? data;
  final PositioningDistance? distance;
  PositioningMessage({this.data, this.distance});
}

class PositioningDataMessage extends PositioningMessage {
  PositioningDataMessage({required PositioningData data}) : super(data: data);
}

class PositioningDistanceMessage extends PositioningMessage {
  PositioningDistanceMessage({required PositioningDistance distance}) : super(distance: distance);
}
