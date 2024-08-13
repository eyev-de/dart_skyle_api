// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterImpl _$$FilterImplFromJson(Map<String, dynamic> json) => _$FilterImpl(
      gaze: (json['gaze'] as num?)?.toInt() ?? 5,
      fixation: (json['fixation'] as num?)?.toInt() ?? 30,
    );

Map<String, dynamic> _$$FilterImplToJson(_$FilterImpl instance) =>
    <String, dynamic>{
      'gaze': instance.gaze,
      'fixation': instance.fixation,
    };
