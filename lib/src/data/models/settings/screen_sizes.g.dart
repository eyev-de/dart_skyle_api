// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_sizes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScreenSizesImpl _$$ScreenSizesImplFromJson(Map<String, dynamic> json) =>
    _$ScreenSizesImpl(
      resolution: json['resolution'] == null
          ? const Size(width: 1920, height: 1080)
          : Size.fromJson(json['resolution'] as Map<String, dynamic>),
      dimensions: json['dimensions'] == null
          ? null
          : Size.fromJson(json['dimensions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ScreenSizesImplToJson(_$ScreenSizesImpl instance) =>
    <String, dynamic>{
      'resolution': instance.resolution,
      'dimensions': instance.dimensions,
    };
