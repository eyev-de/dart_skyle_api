// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Point _$PointFromJson(Map<String, dynamic> json) => _Point(
      x: (json['x'] as num?)?.toDouble() ?? 0.0,
      y: (json['y'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$PointToJson(_Point instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_Size _$SizeFromJson(Map<String, dynamic> json) => _Size(
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      height: (json['height'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$SizeToJson(_Size instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };

_Rect _$RectFromJson(Map<String, dynamic> json) => _Rect(
      topLeft: json['topLeft'] == null
          ? const Point()
          : Point.fromJson(json['topLeft'] as Map<String, dynamic>),
      size: json['size'] == null
          ? const Size()
          : Size.fromJson(json['size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RectToJson(_Rect instance) => <String, dynamic>{
      'topLeft': instance.topLeft,
      'size': instance.size,
    };

_Feature _$FeatureFromJson(Map<String, dynamic> json) => _Feature(
      center: json['center'] == null
          ? const Point()
          : Point.fromJson(json['center'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeatureToJson(_Feature instance) => <String, dynamic>{
      'center': instance.center,
    };

_Glints _$GlintsFromJson(Map<String, dynamic> json) => _Glints(
      left: json['left'] == null
          ? const Feature()
          : Feature.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? const Feature()
          : Feature.fromJson(json['right'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GlintsToJson(_Glints instance) => <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
    };

_Eye _$EyeFromJson(Map<String, dynamic> json) => _Eye(
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

Map<String, dynamic> _$EyeToJson(_Eye instance) => <String, dynamic>{
      'keyPoint': instance.keyPoint,
      'iris': instance.iris,
      'pupil': instance.pupil,
      'glints': instance.glints,
      'distance': instance.distance,
    };

_Eyes _$EyesFromJson(Map<String, dynamic> json) => _Eyes(
      left: json['left'] == null
          ? const Eye()
          : Eye.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? const Eye()
          : Eye.fromJson(json['right'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EyesToJson(_Eyes instance) => <String, dynamic>{
      'left': instance.left,
      'right': instance.right,
    };

_Face _$FaceFromJson(Map<String, dynamic> json) => _Face(
      boundingRect: json['boundingRect'] == null
          ? const Rect()
          : Rect.fromJson(json['boundingRect'] as Map<String, dynamic>),
      eyes: json['eyes'] == null
          ? const Eyes()
          : Eyes.fromJson(json['eyes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FaceToJson(_Face instance) => <String, dynamic>{
      'boundingRect': instance.boundingRect,
      'eyes': instance.eyes,
    };

_RawImage _$RawImageFromJson(Map<String, dynamic> json) => _RawImage(
      width: (json['width'] as num?)?.toInt() ?? 0,
      height: (json['height'] as num?)?.toInt() ?? 0,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$RawImageToJson(_RawImage instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'data': instance.data,
    };

_BinocularGaze _$BinocularGazeFromJson(Map<String, dynamic> json) =>
    _BinocularGaze(
      leftGaze: json['leftGaze'] == null
          ? const Point()
          : Point.fromJson(json['leftGaze'] as Map<String, dynamic>),
      rightGaze: json['rightGaze'] == null
          ? const Point()
          : Point.fromJson(json['rightGaze'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BinocularGazeToJson(_BinocularGaze instance) =>
    <String, dynamic>{
      'leftGaze': instance.leftGaze,
      'rightGaze': instance.rightGaze,
    };
