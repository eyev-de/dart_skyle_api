//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../generated/Skyle.pb.dart' as grpc;
import 'point.dart';

part 'binocular_gaze.freezed.dart';
part 'binocular_gaze.g.dart';

@freezed
class BinocularGaze with _$BinocularGaze {
  const factory BinocularGaze({
    @Default(Point()) Point leftGaze,
    @Default(Point()) Point rightGaze,
  }) = _BinocularGaze;

  const BinocularGaze._();

  factory BinocularGaze.fromJson(Map<String, Object?> json) => _$BinocularGazeFromJson(json);
  factory BinocularGaze.fromBinocularGaze(grpc.BinocularGaze binocularGaze) {
    return BinocularGaze(leftGaze: Point.fromPoint(binocularGaze.leftGaze), rightGaze: Point.fromPoint(binocularGaze.rightGaze));
  }

  bool isEqualTo(grpc.BinocularGaze binocularGaze) {
    return leftGaze.isEqualTo(binocularGaze.leftGaze) && rightGaze.isEqualTo(binocularGaze.rightGaze);
  }

  bool isZero() {
    return leftGaze.x == 0 && leftGaze.y == 0 && rightGaze.x == 0 && rightGaze.y == 0;
  }
}
