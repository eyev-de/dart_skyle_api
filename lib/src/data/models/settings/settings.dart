//  Skyle API
//
//  Created by Konstantin Wachendorff.
//  Copyright © 2022 eyeV GmbH. All rights reserved.
//

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../generated/Skyle.pb.dart';

import 'filter.dart';
import 'ipados.dart';
import 'screen_sizes.dart';
import 'tracking_mode.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(false) bool video,
    @Default(false) bool enablePause,
    @Default(false) bool pause,
    @Default(false) bool guidance,
    @Default(false) bool enableStandby,
    @Default(false) bool disableMouse,
    @Default(Filter()) Filter filter,
    @Default(IPadOS()) IPadOS iPadOS,
    @Default(ScreenSizes()) ScreenSizes screenSizes,
    @Default(false) bool hp,
    @Default(TrackingMode.none) TrackingMode trackingMode,
  }) = _Settings;

  factory Settings.fromJson(Map<String, Object?> json) => _$SettingsFromJson(json);

  factory Settings.fromOptions(Options options) {
    return Settings(
      video: options.stream,
      enablePause: options.enablePause,
      pause: options.pause,
      guidance: options.guidance,
      enableStandby: options.enableStandby,
      disableMouse: options.disableMouse,
      filter: Filter.fromFilterOptions(options.filter),
      iPadOS: IPadOS.fromIPadOptions(options.iPadOptions),
      screenSizes: ScreenSizes.fromScreenResolution(options.res),
      hp: options.hp,
      trackingMode: options.hasEyeUsage() ? TrackingMode.fromOptionsEyeUseModel(options.eyeUsage) : TrackingMode.none,
    );
  }
}
