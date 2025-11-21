// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positioning_quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PositioningQuality _$PositioningQualityFromJson(Map<String, dynamic> json) =>
    _PositioningQuality(
      horizontal: (json['horizontal'] as num?)?.toInt() ?? 0,
      vertical: (json['vertical'] as num?)?.toInt() ?? 0,
      depth: (json['depth'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PositioningQualityToJson(_PositioningQuality instance) =>
    <String, dynamic>{
      'horizontal': instance.horizontal,
      'vertical': instance.vertical,
      'depth': instance.depth,
    };
