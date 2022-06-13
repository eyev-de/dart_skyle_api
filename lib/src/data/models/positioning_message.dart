//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';

import '../../domain/repositories/positioning_repository.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart' as grpc;

import 'point.dart';
import 'positioning_data.dart';

class PositioningMessage {
  final PositioningEyes eyes;
  final PositioningQuality quality;
  final PositioningDistance distance;

  PositioningMessage({
    required this.eyes,
    required this.quality,
    required this.distance,
  });

  PositioningMessage.fromJson(Map<String, dynamic> json)
      : eyes = jsonDecode(json['eyes']),
        quality = jsonDecode(json['quality']),
        distance = jsonDecode(json['distance']);

  Map<String, dynamic> toJson() => {
        'eyes': jsonEncode(eyes),
        'quality': jsonEncode(quality),
        'distance': jsonEncode(distance),
      };
  factory PositioningMessage.fromPositioningMessage(grpc.PositioningMessage positioningMessage) {
    return PositioningMessage(
        eyes: PositioningEyes(
          left: Point.fromPoint(positioningMessage.leftEye),
          right: Point.fromPoint(positioningMessage.rightEye),
        ),
        quality: PositioningQuality(
          horizontal: positioningMessage.qualityXAxis,
          vertical: positioningMessage.qualityYAxis,
          depth: positioningMessage.qualityDepth,
        ),
        distance: positioningMessage.qualityDepth < PositioningRepository.maxDistance
            ? PositioningDistance.far
            : positioningMessage.qualityDepth > PositioningRepository.minDistance
                ? PositioningDistance.close
                : PositioningDistance.normal);
  }
}
