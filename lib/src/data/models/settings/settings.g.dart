// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      video: json['video'] as bool? ?? false,
      enablePause: json['enablePause'] as bool? ?? false,
      pause: json['pause'] as bool? ?? false,
      guidance: json['guidance'] as bool? ?? false,
      enableStandby: json['enableStandby'] as bool? ?? false,
      disableMouse: json['disableMouse'] as bool? ?? false,
      filter: json['filter'] == null
          ? const Filter()
          : Filter.fromJson(json['filter'] as Map<String, dynamic>),
      iPadOS: json['iPadOS'] == null
          ? const IPadOS()
          : IPadOS.fromJson(json['iPadOS'] as Map<String, dynamic>),
      screenSizes: json['screenSizes'] == null
          ? const ScreenSizes()
          : ScreenSizes.fromJson(json['screenSizes'] as Map<String, dynamic>),
      hp: json['hp'] as bool? ?? false,
      trackingMode:
          $enumDecodeNullable(_$TrackingModeEnumMap, json['trackingMode']) ??
              TrackingMode.none,
      trackingDetails: json['trackingDetails'] as bool? ?? false,
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) =>
    <String, dynamic>{
      'video': instance.video,
      'enablePause': instance.enablePause,
      'pause': instance.pause,
      'guidance': instance.guidance,
      'enableStandby': instance.enableStandby,
      'disableMouse': instance.disableMouse,
      'filter': instance.filter,
      'iPadOS': instance.iPadOS,
      'screenSizes': instance.screenSizes,
      'hp': instance.hp,
      'trackingMode': _$TrackingModeEnumMap[instance.trackingMode]!,
      'trackingDetails': instance.trackingDetails,
    };

const _$TrackingModeEnumMap = {
  TrackingMode.none: 'none',
  TrackingMode.both: 'both',
  TrackingMode.left: 'left',
  TrackingMode.right: 'right',
};
