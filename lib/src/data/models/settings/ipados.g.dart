// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipados.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IPadOSImpl _$$IPadOSImplFromJson(Map<String, dynamic> json) => _$IPadOSImpl(
      isOld: json['isOld'] as bool? ?? false,
      isNotZoomed: json['isNotZoomed'] as bool? ?? false,
      iPadModel: $enumDecodeNullable(_$IPadModelEnumMap, json['iPadModel']) ??
          IPadModel.iPad13_10,
    );

Map<String, dynamic> _$$IPadOSImplToJson(_$IPadOSImpl instance) =>
    <String, dynamic>{
      'isOld': instance.isOld,
      'isNotZoomed': instance.isNotZoomed,
      'iPadModel': _$IPadModelEnumMap[instance.iPadModel],
    };

const _$IPadModelEnumMap = {
  IPadModel.iPad16_3: 'iPad16_3',
  IPadModel.iPad16_4: 'iPad16_4',
  IPadModel.iPad16_5: 'iPad16_5',
  IPadModel.iPad16_6: 'iPad16_6',
  IPadModel.iPad14_8: 'iPad14_8',
  IPadModel.iPad14_9: 'iPad14_9',
  IPadModel.iPad14_10: 'iPad14_10',
  IPadModel.iPad14_11: 'iPad14_11',
  IPadModel.iPad14_3: 'iPad14_3',
  IPadModel.iPad14_4: 'iPad14_4',
  IPadModel.iPad14_5: 'iPad14_5',
  IPadModel.iPad14_6: 'iPad14_6',
  IPadModel.iPad13_16: 'iPad13_16',
  IPadModel.iPad13_17: 'iPad13_17',
  IPadModel.iPad13_4: 'iPad13_4',
  IPadModel.iPad13_5: 'iPad13_5',
  IPadModel.iPad13_6: 'iPad13_6',
  IPadModel.iPad13_7: 'iPad13_7',
  IPadModel.iPad13_8: 'iPad13_8',
  IPadModel.iPad13_9: 'iPad13_9',
  IPadModel.iPad13_10: 'iPad13_10',
  IPadModel.iPad13_11: 'iPad13_11',
  IPadModel.iPad14_1: 'iPad14_1',
  IPadModel.iPad14_2: 'iPad14_2',
  IPadModel.iPad8_9: 'iPad8_9',
  IPadModel.iPad8_10: 'iPad8_10',
  IPadModel.iPad8_11: 'iPad8_11',
  IPadModel.iPad8_12: 'iPad8_12',
  IPadModel.iPad13_1: 'iPad13_1',
  IPadModel.iPad13_2: 'iPad13_2',
  IPadModel.iPad8_1: 'iPad8_1',
  IPadModel.iPad8_2: 'iPad8_2',
  IPadModel.iPad8_3: 'iPad8_3',
  IPadModel.iPad8_4: 'iPad8_4',
  IPadModel.iPad8_5: 'iPad8_5',
  IPadModel.iPad8_6: 'iPad8_6',
  IPadModel.iPad8_7: 'iPad8_7',
  IPadModel.iPad8_8: 'iPad8_8',
};
