//  Skyle
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

part 'positioning_quality.freezed.dart';
part 'positioning_quality.g.dart';

@freezed
class PositioningQuality with _$PositioningQuality {
  const factory PositioningQuality({
    @Default(0) int horizontal,
    @Default(0) int vertical,
    @Default(0) int depth,
  }) = _PositioningQuality;

  factory PositioningQuality.fromJson(Map<String, Object?> json) => _$PositioningQualityFromJson(json);
}
