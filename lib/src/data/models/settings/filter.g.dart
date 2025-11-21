// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Filter _$FilterFromJson(Map<String, dynamic> json) => _Filter(
  gaze: (json['gaze'] as num?)?.toInt() ?? 5,
  fixation: (json['fixation'] as num?)?.toInt() ?? 30,
);

Map<String, dynamic> _$FilterToJson(_Filter instance) => <String, dynamic>{
  'gaze': instance.gaze,
  'fixation': instance.fixation,
};
