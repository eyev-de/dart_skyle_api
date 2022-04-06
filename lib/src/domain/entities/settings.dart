//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'filter.dart';
import 'ipados.dart';
import 'screen_sizes.dart';

class Settings {
  final bool video;
  final bool enablePause;
  final bool pause;
  final bool guidance;
  final bool enableStandby;
  final bool disableMouse;
  final Filter filter;
  final IPadOS iPadOS;
  final ScreenSizes screenSizes;
  final bool hp;
  const Settings({
    required this.video,
    required this.enablePause,
    required this.pause,
    required this.guidance,
    required this.enableStandby,
    required this.disableMouse,
    required this.filter,
    required this.iPadOS,
    required this.screenSizes,
    required this.hp,
  });
}
