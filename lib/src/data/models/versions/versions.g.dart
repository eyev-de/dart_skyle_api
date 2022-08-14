// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'versions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Versions _$$_VersionsFromJson(Map<String, dynamic> json) => _$_Versions(
      firmware: json['firmware'] as String,
      eyetracker: json['eyetracker'] as String,
      calib: json['calib'] as String,
      base: json['base'] as String,
      serial: BigInt.parse(json['serial'] as String),
      skyleType: json['skyleType'] as int,
      isDemo: json['isDemo'] as bool,
    );

Map<String, dynamic> _$$_VersionsToJson(_$_Versions instance) =>
    <String, dynamic>{
      'firmware': instance.firmware,
      'eyetracker': instance.eyetracker,
      'calib': instance.calib,
      'base': instance.base,
      'serial': instance.serial.toString(),
      'skyleType': instance.skyleType,
      'isDemo': instance.isDemo,
    };
