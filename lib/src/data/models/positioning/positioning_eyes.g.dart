// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positioning_eyes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositioningEyesImpl _$$PositioningEyesImplFromJson(
        Map<String, dynamic> json) =>
    _$PositioningEyesImpl(
      left: json['left'] == null
          ? const Point()
          : Point.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? const Point()
          : Point.fromJson(json['right'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PositioningEyesImplToJson(
        _$PositioningEyesImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
    };
