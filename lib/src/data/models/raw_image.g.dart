// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawImage _$$_RawImageFromJson(Map<String, dynamic> json) => _$_RawImage(
      width: json['width'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as int).toList() ??
          const [],
    );

Map<String, dynamic> _$$_RawImageToJson(_$_RawImage instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'data': instance.data,
    };
