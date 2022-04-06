//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../domain/entities/screen_sizes.dart';
import '../../domain/entities/size.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart';

class ScreenSizesModel extends ScreenSizes {
  ScreenSizesModel({required Size resolution, Size? dimenstions}) : super(resolution: resolution, dimensions: dimenstions);

  factory ScreenSizesModel.fromScreenResolution(ScreenResolution screenResolution) {
    return ScreenSizesModel(
      resolution: Size(
        width: screenResolution.width.toDouble(),
        height: screenResolution.height.toDouble(),
      ),
      dimenstions: Size(
        width: screenResolution.widthinMM.toDouble(),
        height: screenResolution.heightinMM.toDouble(),
      ),
    );
  }

  ScreenResolution toScreenResolution() {
    return ScreenResolution(
      width: resolution.width.round(),
      height: resolution.height.round(),
      widthinMM: dimensions != null ? dimensions!.width.round() : null,
      heightinMM: dimensions != null ? dimensions!.height.round() : null,
    );
  }
}
