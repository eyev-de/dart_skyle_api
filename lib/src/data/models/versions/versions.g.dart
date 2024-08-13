// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'versions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VersionsImpl _$$VersionsImplFromJson(Map<String, dynamic> json) =>
    _$VersionsImpl(
      firmware: json['firmware'] as String,
      eyetracker: json['eyetracker'] as String,
      calib: json['calib'] as String,
      base: json['base'] as String,
      serial: BigInt.parse(json['serial'] as String),
      skyleType: (json['skyleType'] as num).toInt(),
      isDemo: json['isDemo'] as bool,
    );

Map<String, dynamic> _$$VersionsImplToJson(_$VersionsImpl instance) =>
    <String, dynamic>{
      'firmware': instance.firmware,
      'eyetracker': instance.eyetracker,
      'calib': instance.calib,
      'base': instance.base,
      'serial': instance.serial.toString(),
      'skyleType': instance.skyleType,
      'isDemo': instance.isDemo,
    };
