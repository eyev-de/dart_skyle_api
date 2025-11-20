//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repositories/positioning_repository.dart';
import '../../../generated/Skyle.pb.dart' as grpc;
import '../types.dart';
import 'positioning_distance.dart';
import 'positioning_eyes.dart';
import 'positioning_quality.dart';

part 'positioning_message.freezed.dart';
part 'positioning_message.g.dart';

@freezed
sealed class PositioningMessage with _$PositioningMessage {
  const factory PositioningMessage({
    @Default(PositioningEyes()) PositioningEyes eyes,
    @Default(PositioningQuality()) PositioningQuality quality,
    @Default(PositioningDistance.none) PositioningDistance distance,
    Face? face,
  }) = _PositioningMessage;

  factory PositioningMessage.fromJson(Map<String, Object?> json) => _$PositioningMessageFromJson(json);

  factory PositioningMessage.fromPositioningMessage(grpc.PositioningMessage positioningMessage) {
    return PositioningMessage(
      eyes: PositioningEyes(
        left: Point.fromPoint(positioningMessage.leftEye),
        right: Point.fromPoint(positioningMessage.rightEye),
      ),
      quality: PositioningQuality(
        horizontal: positioningMessage.horizontalQuality,
        vertical: positioningMessage.verticalQuality,
        depth: positioningMessage.positioningQuality,
      ),
      distance: positioningMessage.distanceQuality < PositioningRepository.maxDistance
          ? PositioningDistance.far
          : positioningMessage.distanceQuality > PositioningRepository.minDistance
              ? PositioningDistance.close
              : PositioningDistance.normal,
      face: positioningMessage.hasFace() ? Face.fromFace(positioningMessage.face) : null,
    );
  }
}
