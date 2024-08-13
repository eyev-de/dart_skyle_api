// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RawImageImpl _$$RawImageImplFromJson(Map<String, dynamic> json) =>
    _$RawImageImpl(
      width: (json['width'] as num?)?.toInt() ?? 0,
      height: (json['height'] as num?)?.toInt() ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RawImageImplToJson(_$RawImageImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'data': instance.data,
    };
