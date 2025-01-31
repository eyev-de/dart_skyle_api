// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positioning_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositioningMessageImpl _$$PositioningMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$PositioningMessageImpl(
      eyes: json['eyes'] == null
          ? const PositioningEyes()
          : PositioningEyes.fromJson(json['eyes'] as Map<String, dynamic>),
      quality: json['quality'] == null
          ? const PositioningQuality()
          : PositioningQuality.fromJson(
              json['quality'] as Map<String, dynamic>),
      distance:
          $enumDecodeNullable(_$PositioningDistanceEnumMap, json['distance']) ??
              PositioningDistance.none,
      face: json['face'] == null
          ? null
          : Face.fromJson(json['face'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PositioningMessageImplToJson(
        _$PositioningMessageImpl instance) =>
    <String, dynamic>{
      'eyes': instance.eyes,
      'quality': instance.quality,
      'distance': _$PositioningDistanceEnumMap[instance.distance]!,
      'face': instance.face,
    };

const _$PositioningDistanceEnumMap = {
  PositioningDistance.none: 'none',
  PositioningDistance.normal: 'normal',
  PositioningDistance.close: 'close',
  PositioningDistance.far: 'far',
};
