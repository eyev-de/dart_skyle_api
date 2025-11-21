// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positioning_eyes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PositioningEyes _$PositioningEyesFromJson(Map<String, dynamic> json) =>
    _PositioningEyes(
      left: json['left'] == null
          ? const Point()
          : Point.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? const Point()
          : Point.fromJson(json['right'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PositioningEyesToJson(_PositioningEyes instance) =>
    <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
    };
