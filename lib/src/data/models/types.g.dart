// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointImpl _$$PointImplFromJson(Map<String, dynamic> json) => _$PointImpl(
      x: (json['x'] as num?)?.toDouble() ?? 0.0,
      y: (json['y'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$PointImplToJson(_$PointImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$SizeImpl _$$SizeImplFromJson(Map<String, dynamic> json) => _$SizeImpl(
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      height: (json['height'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$SizeImplToJson(_$SizeImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };

_$RectImpl _$$RectImplFromJson(Map<String, dynamic> json) => _$RectImpl(
      topLeft: json['topLeft'] == null
          ? const Point()
          : Point.fromJson(json['topLeft'] as Map<String, dynamic>),
      size: json['size'] == null
          ? const Size()
          : Size.fromJson(json['size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RectImplToJson(_$RectImpl instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'size': instance.size,
    };

_$FeatureImpl _$$FeatureImplFromJson(Map<String, dynamic> json) =>
    _$FeatureImpl(
      center: json['center'] == null
          ? const Point()
          : Point.fromJson(json['center'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeatureImplToJson(_$FeatureImpl instance) =>
    <String, dynamic>{
      'center': instance.center,
    };

_$GlintsImpl _$$GlintsImplFromJson(Map<String, dynamic> json) => _$GlintsImpl(
      left: json['left'] == null
          ? const Feature()
          : Feature.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? const Feature()
          : Feature.fromJson(json['right'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GlintsImplToJson(_$GlintsImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
    };

_$EyeImpl _$$EyeImplFromJson(Map<String, dynamic> json) => _$EyeImpl(
      keyPoint: json['keyPoint'] == null
          ? const Point()
          : Point.fromJson(json['keyPoint'] as Map<String, dynamic>),
      iris: json['iris'] == null
          ? const Feature()
          : Feature.fromJson(json['iris'] as Map<String, dynamic>),
      pupil: json['pupil'] == null
          ? const Feature()
          : Feature.fromJson(json['pupil'] as Map<String, dynamic>),
      glints: json['glints'] == null
          ? const Glints()
          : Glints.fromJson(json['glints'] as Map<String, dynamic>),
      distance: (json['distance'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$EyeImplToJson(_$EyeImpl instance) => <String, dynamic>{
      'keyPoint': instance.keyPoint,
      'iris': instance.iris,
      'pupil': instance.pupil,
      'glints': instance.glints,
      'distance': instance.distance,
    };

_$EyesImpl _$$EyesImplFromJson(Map<String, dynamic> json) => _$EyesImpl(
      left: json['left'] == null
          ? const Eye()
          : Eye.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? const Eye()
          : Eye.fromJson(json['right'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EyesImplToJson(_$EyesImpl instance) =>
    <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
    };

_$FaceImpl _$$FaceImplFromJson(Map<String, dynamic> json) => _$FaceImpl(
      boundingRect: json['boundingRect'] == null
          ? const Rect()
          : Rect.fromJson(json['boundingRect'] as Map<String, dynamic>),
      eyes: json['eyes'] == null
          ? const Eyes()
          : Eyes.fromJson(json['eyes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FaceImplToJson(_$FaceImpl instance) =>
    <String, dynamic>{
      'boundingRect': instance.boundingRect,
      'eyes': instance.eyes,
    };

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
