//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repositories/positioning_repository.dart';
import '../../../generated/Skyle.proto/Skyle.pb.dart' as grpc;

import '../point.dart';

import 'positioning_distance.dart';
import 'positioning_eyes.dart';
import 'positioning_quality.dart';

part 'positioning_message.freezed.dart';
part 'positioning_message.g.dart';

@freezed
class PositioningMessage with _$PositioningMessage {
  const factory PositioningMessage({
    required PositioningEyes eyes,
    required PositioningQuality quality,
    required PositioningDistance distance,
  }) = _PositioningMessage;

  factory PositioningMessage.fromJson(Map<String, Object?> json) => _$PositioningMessageFromJson(json);

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
