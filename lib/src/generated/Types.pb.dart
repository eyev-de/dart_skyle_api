//
//  Generated code. Do not modify.
//  source: Types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// *
///  Message for a 2D point
class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  Point._() : super();
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Point', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)) as Point;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

/// *
///  Message for a size
class Size extends $pb.GeneratedMessage {
  factory Size({
    $core.double? width,
    $core.double? height,
  }) {
    final $result = create();
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    return $result;
  }
  Size._() : super();
  factory Size.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Size.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Size', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Size clone() => Size()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Size copyWith(void Function(Size) updates) => super.copyWith((message) => updates(message as Size)) as Size;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Size create() => Size._();
  Size createEmptyInstance() => create();
  static $pb.PbList<Size> createRepeated() => $pb.PbList<Size>();
  @$core.pragma('dart2js:noInline')
  static Size getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Size>(create);
  static Size? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get height => $_getN(1);
  @$pb.TagNumber(2)
  set height($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);
}

/// *
///  Message for a rectangle
class Rectangle extends $pb.GeneratedMessage {
  factory Rectangle({
    Point? topLeft,
    Size? size,
  }) {
    final $result = create();
    if (topLeft != null) {
      $result.topLeft = topLeft;
    }
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  Rectangle._() : super();
  factory Rectangle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Rectangle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Rectangle', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'topLeft', protoName: 'topLeft', subBuilder: Point.create)
    ..aOM<Size>(2, _omitFieldNames ? '' : 'size', subBuilder: Size.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Rectangle clone() => Rectangle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Rectangle copyWith(void Function(Rectangle) updates) => super.copyWith((message) => updates(message as Rectangle)) as Rectangle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rectangle create() => Rectangle._();
  Rectangle createEmptyInstance() => create();
  static $pb.PbList<Rectangle> createRepeated() => $pb.PbList<Rectangle>();
  @$core.pragma('dart2js:noInline')
  static Rectangle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rectangle>(create);
  static Rectangle? _defaultInstance;

  @$pb.TagNumber(1)
  Point get topLeft => $_getN(0);
  @$pb.TagNumber(1)
  set topLeft(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopLeft() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureTopLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Size get size => $_getN(1);
  @$pb.TagNumber(2)
  set size(Size v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);
  @$pb.TagNumber(2)
  Size ensureSize() => $_ensure(1);
}

/// *
///  Message for a feature
class Feature extends $pb.GeneratedMessage {
  factory Feature({
    Point? center,
  }) {
    final $result = create();
    if (center != null) {
      $result.center = center;
    }
    return $result;
  }
  Feature._() : super();
  factory Feature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Feature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Feature', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'center', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Feature clone() => Feature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Feature copyWith(void Function(Feature) updates) => super.copyWith((message) => updates(message as Feature)) as Feature;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  Feature createEmptyInstance() => create();
  static $pb.PbList<Feature> createRepeated() => $pb.PbList<Feature>();
  @$core.pragma('dart2js:noInline')
  static Feature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature>(create);
  static Feature? _defaultInstance;

  @$pb.TagNumber(1)
  Point get center => $_getN(0);
  @$pb.TagNumber(1)
  set center(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCenter() => $_has(0);
  @$pb.TagNumber(1)
  void clearCenter() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureCenter() => $_ensure(0);
}

/// *
///  Left and right glint
class Glints extends $pb.GeneratedMessage {
  factory Glints({
    Feature? left,
    Feature? right,
  }) {
    final $result = create();
    if (left != null) {
      $result.left = left;
    }
    if (right != null) {
      $result.right = right;
    }
    return $result;
  }
  Glints._() : super();
  factory Glints.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Glints.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Glints', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..aOM<Feature>(1, _omitFieldNames ? '' : 'left', subBuilder: Feature.create)
    ..aOM<Feature>(2, _omitFieldNames ? '' : 'right', subBuilder: Feature.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Glints clone() => Glints()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Glints copyWith(void Function(Glints) updates) => super.copyWith((message) => updates(message as Glints)) as Glints;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Glints create() => Glints._();
  Glints createEmptyInstance() => create();
  static $pb.PbList<Glints> createRepeated() => $pb.PbList<Glints>();
  @$core.pragma('dart2js:noInline')
  static Glints getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Glints>(create);
  static Glints? _defaultInstance;

  @$pb.TagNumber(1)
  Feature get left => $_getN(0);
  @$pb.TagNumber(1)
  set left(Feature v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => clearField(1);
  @$pb.TagNumber(1)
  Feature ensureLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Feature get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(Feature v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => clearField(2);
  @$pb.TagNumber(2)
  Feature ensureRight() => $_ensure(1);
}

/// *
///  Message for an eye
class Eye extends $pb.GeneratedMessage {
  factory Eye({
    Point? keyPoint,
    Feature? iris,
    Feature? pupil,
    Glints? glints,
    $core.double? distance,
  }) {
    final $result = create();
    if (keyPoint != null) {
      $result.keyPoint = keyPoint;
    }
    if (iris != null) {
      $result.iris = iris;
    }
    if (pupil != null) {
      $result.pupil = pupil;
    }
    if (glints != null) {
      $result.glints = glints;
    }
    if (distance != null) {
      $result.distance = distance;
    }
    return $result;
  }
  Eye._() : super();
  factory Eye.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Eye.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Eye', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'keyPoint', protoName: 'keyPoint', subBuilder: Point.create)
    ..aOM<Feature>(2, _omitFieldNames ? '' : 'iris', subBuilder: Feature.create)
    ..aOM<Feature>(3, _omitFieldNames ? '' : 'pupil', subBuilder: Feature.create)
    ..aOM<Glints>(4, _omitFieldNames ? '' : 'glints', subBuilder: Glints.create)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'distance', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Eye clone() => Eye()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Eye copyWith(void Function(Eye) updates) => super.copyWith((message) => updates(message as Eye)) as Eye;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Eye create() => Eye._();
  Eye createEmptyInstance() => create();
  static $pb.PbList<Eye> createRepeated() => $pb.PbList<Eye>();
  @$core.pragma('dart2js:noInline')
  static Eye getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eye>(create);
  static Eye? _defaultInstance;

  @$pb.TagNumber(1)
  Point get keyPoint => $_getN(0);
  @$pb.TagNumber(1)
  set keyPoint(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyPoint() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureKeyPoint() => $_ensure(0);

  @$pb.TagNumber(2)
  Feature get iris => $_getN(1);
  @$pb.TagNumber(2)
  set iris(Feature v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIris() => $_has(1);
  @$pb.TagNumber(2)
  void clearIris() => clearField(2);
  @$pb.TagNumber(2)
  Feature ensureIris() => $_ensure(1);

  @$pb.TagNumber(3)
  Feature get pupil => $_getN(2);
  @$pb.TagNumber(3)
  set pupil(Feature v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPupil() => $_has(2);
  @$pb.TagNumber(3)
  void clearPupil() => clearField(3);
  @$pb.TagNumber(3)
  Feature ensurePupil() => $_ensure(2);

  @$pb.TagNumber(4)
  Glints get glints => $_getN(3);
  @$pb.TagNumber(4)
  set glints(Glints v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGlints() => $_has(3);
  @$pb.TagNumber(4)
  void clearGlints() => clearField(4);
  @$pb.TagNumber(4)
  Glints ensureGlints() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get distance => $_getN(4);
  @$pb.TagNumber(5)
  set distance($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearDistance() => clearField(5);
}

/// *
///  Message for a pair of eyes
class Eyes extends $pb.GeneratedMessage {
  factory Eyes({
    Eye? left,
    Eye? right,
  }) {
    final $result = create();
    if (left != null) {
      $result.left = left;
    }
    if (right != null) {
      $result.right = right;
    }
    return $result;
  }
  Eyes._() : super();
  factory Eyes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Eyes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Eyes', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..aOM<Eye>(1, _omitFieldNames ? '' : 'left', subBuilder: Eye.create)
    ..aOM<Eye>(2, _omitFieldNames ? '' : 'right', subBuilder: Eye.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Eyes clone() => Eyes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Eyes copyWith(void Function(Eyes) updates) => super.copyWith((message) => updates(message as Eyes)) as Eyes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Eyes create() => Eyes._();
  Eyes createEmptyInstance() => create();
  static $pb.PbList<Eyes> createRepeated() => $pb.PbList<Eyes>();
  @$core.pragma('dart2js:noInline')
  static Eyes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eyes>(create);
  static Eyes? _defaultInstance;

  @$pb.TagNumber(1)
  Eye get left => $_getN(0);
  @$pb.TagNumber(1)
  set left(Eye v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => clearField(1);
  @$pb.TagNumber(1)
  Eye ensureLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Eye get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(Eye v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => clearField(2);
  @$pb.TagNumber(2)
  Eye ensureRight() => $_ensure(1);
}

/// *
///  Message for a face
///  Rectangle bounding box of the face
///  Eyes containing several features of the eyes
class Face extends $pb.GeneratedMessage {
  factory Face({
    Rectangle? boundingRect,
    Eyes? eyes,
  }) {
    final $result = create();
    if (boundingRect != null) {
      $result.boundingRect = boundingRect;
    }
    if (eyes != null) {
      $result.eyes = eyes;
    }
    return $result;
  }
  Face._() : super();
  factory Face.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Face.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Face', package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'), createEmptyInstance: create)
    ..aOM<Rectangle>(1, _omitFieldNames ? '' : 'boundingRect', protoName: 'boundingRect', subBuilder: Rectangle.create)
    ..aOM<Eyes>(2, _omitFieldNames ? '' : 'eyes', subBuilder: Eyes.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Face clone() => Face()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Face copyWith(void Function(Face) updates) => super.copyWith((message) => updates(message as Face)) as Face;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Face create() => Face._();
  Face createEmptyInstance() => create();
  static $pb.PbList<Face> createRepeated() => $pb.PbList<Face>();
  @$core.pragma('dart2js:noInline')
  static Face getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Face>(create);
  static Face? _defaultInstance;

  @$pb.TagNumber(1)
  Rectangle get boundingRect => $_getN(0);
  @$pb.TagNumber(1)
  set boundingRect(Rectangle v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoundingRect() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoundingRect() => clearField(1);
  @$pb.TagNumber(1)
  Rectangle ensureBoundingRect() => $_ensure(0);

  @$pb.TagNumber(2)
  Eyes get eyes => $_getN(1);
  @$pb.TagNumber(2)
  set eyes(Eyes v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEyes() => $_has(1);
  @$pb.TagNumber(2)
  void clearEyes() => clearField(2);
  @$pb.TagNumber(2)
  Eyes ensureEyes() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
