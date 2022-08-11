// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipados.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPadOS _$$_IPadOSFromJson(Map<String, dynamic> json) => _$_IPadOS(
      isOld: json['isOld'] as bool? ?? false,
      isNotZommed: json['isNotZommed'] as bool? ?? false,
      iPadModel: $enumDecodeNullable(_$IPadModelEnumMap, json['iPadModel']) ??
          IPadModel.iPadPro12_9,
    );

Map<String, dynamic> _$$_IPadOSToJson(_$_IPadOS instance) => <String, dynamic>{
      'isOld': instance.isOld,
      'isNotZommed': instance.isNotZommed,
      'iPadModel': _$IPadModelEnumMap[instance.iPadModel]!,
    };

const _$IPadModelEnumMap = {
  IPadModel.iPadPro12_9: 'iPadPro12_9',
  IPadModel.iPadAir2022: 'iPadAir2022',
};
