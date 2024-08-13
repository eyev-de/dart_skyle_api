// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positioning_quality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositioningQualityImpl _$$PositioningQualityImplFromJson(
        Map<String, dynamic> json) =>
    _$PositioningQualityImpl(
      horizontal: (json['horizontal'] as num?)?.toInt() ?? 0,
      vertical: (json['vertical'] as num?)?.toInt() ?? 0,
      depth: (json['depth'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PositioningQualityImplToJson(
        _$PositioningQualityImpl instance) =>
    <String, dynamic>{
      'horizontal': instance.horizontal,
      'vertical': instance.vertical,
      'depth': instance.depth,
    };
