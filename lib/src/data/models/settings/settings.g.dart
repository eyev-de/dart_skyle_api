// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
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
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
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
    };
