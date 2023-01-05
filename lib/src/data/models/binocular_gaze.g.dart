// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'binocular_gaze.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BinocularGaze _$$_BinocularGazeFromJson(Map<String, dynamic> json) =>
    _$_BinocularGaze(
      leftGaze: json['leftGaze'] == null
          ? const Point()
          : Point.fromJson(json['leftGaze'] as Map<String, dynamic>),
      rightGaze: json['rightGaze'] == null
          ? const Point()
          : Point.fromJson(json['rightGaze'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BinocularGazeToJson(_$_BinocularGaze instance) =>
    <String, dynamic>{
      'leftGaze': instance.leftGaze,
      'rightGaze': instance.rightGaze,
    };
