//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'dart:convert';

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

  Settings.fromJson(Map<String, dynamic> json)
      : video = json['video'],
        enablePause = json['enablePause'],
        pause = json['pause'],
        guidance = json['guidance'],
        enableStandby = json['enableStandby'],
        disableMouse = json['disableMouse'],
        filter = jsonDecode(json['filter']),
        iPadOS = jsonDecode(json['iPadOS']),
        screenSizes = jsonDecode(json['screenSizes']),
        hp = json['hp'];

  Map<String, dynamic> toJson() => {
        'video': video,
        'enablePause': enablePause,
        'pause': pause,
        'guidance': guidance,
        'enableStandby': enableStandby,
        'disableMouse': disableMouse,
        'filter': jsonEncode(filter),
        'iPadOS': jsonEncode(iPadOS),
        'screenSizes': jsonEncode(screenSizes),
        'hp': hp,
      };
}
