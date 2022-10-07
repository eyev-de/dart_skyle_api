// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipados.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IPadOS _$$_IPadOSFromJson(Map<String, dynamic> json) => _$_IPadOS(
      isOld: json['isOld'] as bool? ?? false,
      isNotZoomed: json['isNotZoomed'] as bool? ?? false,
      iPadModel: $enumDecodeNullable(_$IPadModelEnumMap, json['iPadModel']) ??
          IPadModel.iPad13_10,
    );

Map<String, dynamic> _$$_IPadOSToJson(_$_IPadOS instance) => <String, dynamic>{
      'isOld': instance.isOld,
      'isNotZoomed': instance.isNotZoomed,
      'iPadModel': _$IPadModelEnumMap[instance.iPadModel],
    };

const _$IPadModelEnumMap = {
  IPadModel.iPad8_5: 'iPad8_5',
  IPadModel.iPad8_6: 'iPad8_6',
  IPadModel.iPad8_7: 'iPad8_7',
  IPadModel.iPad8_8: 'iPad8_8',
  IPadModel.iPad8_11: 'iPad8_11',
  IPadModel.iPad8_12: 'iPad8_12',
  IPadModel.iPad13_1: 'iPad13_1',
  IPadModel.iPad13_2: 'iPad13_2',
  IPadModel.iPad13_8: 'iPad13_8',
  IPadModel.iPad13_9: 'iPad13_9',
  IPadModel.iPad13_10: 'iPad13_10',
  IPadModel.iPad13_11: 'iPad13_11',
  IPadModel.iPad13_16: 'iPad13_16',
  IPadModel.iPad13_17: 'iPad13_17',
};
