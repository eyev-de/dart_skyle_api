// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_sizes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScreenSizes _$$_ScreenSizesFromJson(Map<String, dynamic> json) =>
    _$_ScreenSizes(
      resolution: json['resolution'] == null
          ? const Size(width: 1920, height: 1080)
          : Size.fromJson(json['resolution'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : Size.fromJson(json['dimensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScreenSizesToJson(_$_ScreenSizes instance) =>
    <String, dynamic>{
      'resolution': instance.resolution,
      'dimensions': instance.dimensions,
    };
