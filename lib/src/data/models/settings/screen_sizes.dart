//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/Skyle.proto/Skyle.pb.dart';

import '../size.dart';

part 'screen_sizes.freezed.dart';
part 'screen_sizes.g.dart';

@freezed
class ScreenSizes with _$ScreenSizes {
  const factory ScreenSizes({
    @Default(Size(width: 1920, height: 1080)) Size resolution,
    Size? dimensions,
  }) = _ScreenSizes;

  factory ScreenSizes.fromJson(Map<String, Object?> json) => _$ScreenSizesFromJson(json);

  factory ScreenSizes.fromScreenResolution(ScreenResolution screenResolution) {
    return ScreenSizes(
      resolution: Size(
        width: screenResolution.width.toDouble(),
        height: screenResolution.height.toDouble(),
      ),
      dimensions: Size(
        width: screenResolution.widthinMM.toDouble(),
        height: screenResolution.heightinMM.toDouble(),
      ),
    );
  }

  static ScreenResolution toScreenResolution(ScreenSizes screenSizes) {
    return ScreenResolution(
      width: screenSizes.resolution.width.round(),
      height: screenSizes.resolution.height.round(),
      widthinMM: screenSizes.dimensions != null ? screenSizes.dimensions!.width.round() : null,
      heightinMM: screenSizes.dimensions != null ? screenSizes.dimensions!.height.round() : null,
    );
  }
}
