// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'binocular_gaze.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BinocularGazeImpl _$$BinocularGazeImplFromJson(Map<String, dynamic> json) =>
    _$BinocularGazeImpl(
      leftGaze: json['leftGaze'] == null
          ? const Point()
          : Point.fromJson(json['leftGaze'] as Map<String, dynamic>),
      rightGaze: json['rightGaze'] == null
          ? const Point()
          : Point.fromJson(json['rightGaze'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BinocularGazeImplToJson(_$BinocularGazeImpl instance) =>
    <String, dynamic>{
      'leftGaze': instance.leftGaze,
      'rightGaze': instance.rightGaze,
    };
