// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positioning_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositioningMessage _$$_PositioningMessageFromJson(
        Map<String, dynamic> json) =>
    _$_PositioningMessage(
      eyes: PositioningEyes.fromJson(json['eyes'] as Map<String, dynamic>),
      quality:
          PositioningQuality.fromJson(json['quality'] as Map<String, dynamic>),
      distance: $enumDecode(_$PositioningDistanceEnumMap, json['distance']),
    );

Map<String, dynamic> _$$_PositioningMessageToJson(
        _$_PositioningMessage instance) =>
    <String, dynamic>{
      'eyes': instance.eyes,
      'quality': instance.quality,
      'distance': _$PositioningDistanceEnumMap[instance.distance]!,
    };

const _$PositioningDistanceEnumMap = {
  PositioningDistance.none: 'none',
  PositioningDistance.normal: 'normal',
  PositioningDistance.close: 'close',
  PositioningDistance.far: 'far',
};
