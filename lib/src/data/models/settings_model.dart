//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import '../../domain/entities/filter.dart';
import '../../domain/entities/ipados.dart';
import '../../domain/entities/screen_sizes.dart';
import '../../domain/entities/settings.dart';
import '../../generated/Skyle.proto/Skyle.pb.dart';
import 'filter_model.dart';
import 'ipados_model.dart';
import 'screen_sizes_model.dart';

class SettingsModel extends Settings {
  SettingsModel({
    required bool video,
    required bool enablePause,
    required bool pause,
    required bool guidance,
    required bool enableStandby,
    required bool disableMouse,
    required Filter filter,
    required IPadOS iPadOS,
    required ScreenSizes screenSizes,
    required bool hp,
  }) : super(
          video: video,
          enablePause: enablePause,
          pause: pause,
          guidance: guidance,
          enableStandby: enableStandby,
          disableMouse: disableMouse,
          filter: filter,
          iPadOS: iPadOS,
          screenSizes: screenSizes,
          hp: hp,
        );

  factory SettingsModel.fromOptions(Options options) {
    return SettingsModel(
      video: options.stream,
      enablePause: options.enablePause,
      pause: options.pause,
      guidance: options.guidance,
      enableStandby: options.enableStandby,
      disableMouse: options.disableMouse,
      filter: FilterModel.fromFilterOptions(options.filter),
      iPadOS: IPadOSModel.fromIPadOptions(options.iPadOptions),
      screenSizes: ScreenSizesModel.fromScreenResolution(options.res),
      hp: options.hp,
    );
  }
}
