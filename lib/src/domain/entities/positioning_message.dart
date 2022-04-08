//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';

import 'positioning_data.dart';

abstract class PositioningMessage {
  final PositioningData? data;
  final PositioningDistance? distance;
  PositioningMessage({this.data, this.distance});
}

class PositioningDataMessage extends PositioningMessage {
  PositioningDataMessage({required PositioningData data}) : super(data: data);
  PositioningDataMessage.fromJson(Map<String, dynamic> json) : super(data: jsonDecode(json['data']));
  Map<String, dynamic> toJson() => {
        'data': jsonEncode(data),
      };
}

class PositioningDistanceMessage extends PositioningMessage {
  PositioningDistanceMessage({required PositioningDistance distance}) : super(distance: distance);
  PositioningDistanceMessage.fromJson(Map<String, dynamic> json) : super(distance: jsonDecode(json['distance']));
  Map<String, dynamic> toJson() => {
        'distance': jsonEncode(distance),
      };
}
