//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../point.dart';

part 'positioning_eyes.freezed.dart';
part 'positioning_eyes.g.dart';

@freezed
class PositioningEyes with _$PositioningEyes {
  const factory PositioningEyes({
    required Point left,
    required Point right,
  }) = _PositioningEyes;

  factory PositioningEyes.fromJson(Map<String, Object?> json) => _$PositioningEyesFromJson(json);

  factory PositioningEyes.zero() {
    return PositioningEyes(left: Point.zero(), right: Point.zero());
  }
}
