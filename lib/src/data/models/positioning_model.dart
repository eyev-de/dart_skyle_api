//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../domain/entities/positioning_data.dart';
import '../../domain/entities/positioning_message.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart' as grpc;
import 'point_model.dart';

class PositioningModel extends PositioningDataMessage {
  PositioningModel({required PositioningData data}) : super(data: data);
  factory PositioningModel.fromPositioningMessage(grpc.PositioningMessage positioningMessage) {
    return PositioningModel(
      data: PositioningData(
        eyes: PositioningEyes(
          left: PointModel.fromPoint(positioningMessage.leftEye),
          right: PointModel.fromPoint(positioningMessage.rightEye),
        ),
        quality: PositioningQuality(
          horizontal: positioningMessage.qualityXAxis,
          vertical: positioningMessage.qualityYAxis,
          depth: positioningMessage.qualityDepth,
        ),
      ),
    );
  }
}
