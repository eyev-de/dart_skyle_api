//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../types.dart';

part 'positioning_eyes.freezed.dart';
part 'positioning_eyes.g.dart';

@freezed
sealed class PositioningEyes with _$PositioningEyes {
  const factory PositioningEyes({
    @Default(Point()) Point left,
    @Default(Point()) Point right,
  }) = _PositioningEyes;

  factory PositioningEyes.fromJson(Map<String, Object?> json) => _$PositioningEyesFromJson(json);
}
