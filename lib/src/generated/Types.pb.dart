// This is a generated file - do not edit.
//
// Generated from Types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Types.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'Types.pbenum.dart';

/// *
///  Message for a 2D point
class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? x,
    $core.double? y,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  Point._();

  factory Point.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Point.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Point',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point copyWith(void Function(Point) updates) =>
      super.copyWith((message) => updates(message as Point)) as Point;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  @$core.override
  Point createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);
}

/// *
///  Message for a size
class Size extends $pb.GeneratedMessage {
  factory Size({
    $core.double? width,
    $core.double? height,
  }) {
    final result = create();
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    return result;
  }

  Size._();

  factory Size.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Size.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Size',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'width')
    ..aD(2, _omitFieldNames ? '' : 'height')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Size clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Size copyWith(void Function(Size) updates) =>
      super.copyWith((message) => updates(message as Size)) as Size;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Size create() => Size._();
  @$core.override
  Size createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Size getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Size>(create);
  static Size? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get height => $_getN(1);
  @$pb.TagNumber(2)
  set height($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => $_clearField(2);
}

/// *
///  Message for a rectangle
class Rectangle extends $pb.GeneratedMessage {
  factory Rectangle({
    Point? topLeft,
    Size? size,
  }) {
    final result = create();
    if (topLeft != null) result.topLeft = topLeft;
    if (size != null) result.size = size;
    return result;
  }

  Rectangle._();

  factory Rectangle.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Rectangle.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Rectangle',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'topLeft',
        protoName: 'topLeft', subBuilder: Point.create)
    ..aOM<Size>(2, _omitFieldNames ? '' : 'size', subBuilder: Size.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rectangle clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rectangle copyWith(void Function(Rectangle) updates) =>
      super.copyWith((message) => updates(message as Rectangle)) as Rectangle;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rectangle create() => Rectangle._();
  @$core.override
  Rectangle createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Rectangle getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rectangle>(create);
  static Rectangle? _defaultInstance;

  @$pb.TagNumber(1)
  Point get topLeft => $_getN(0);
  @$pb.TagNumber(1)
  set topLeft(Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTopLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopLeft() => $_clearField(1);
  @$pb.TagNumber(1)
  Point ensureTopLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Size get size => $_getN(1);
  @$pb.TagNumber(2)
  set size(Size value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);
  @$pb.TagNumber(2)
  Size ensureSize() => $_ensure(1);
}

/// *
///  Message for a rotated rectangle
///  This rectangle is defined by its center, size, and angle
///  The angle is in degrees, counter-clockwise from the x-axis
class RotatedRectangle extends $pb.GeneratedMessage {
  factory RotatedRectangle({
    Point? center,
    Size? size,
    $core.double? angle,
  }) {
    final result = create();
    if (center != null) result.center = center;
    if (size != null) result.size = size;
    if (angle != null) result.angle = angle;
    return result;
  }

  RotatedRectangle._();

  factory RotatedRectangle.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RotatedRectangle.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RotatedRectangle',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'center', subBuilder: Point.create)
    ..aOM<Size>(2, _omitFieldNames ? '' : 'size', subBuilder: Size.create)
    ..aD(3, _omitFieldNames ? '' : 'angle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RotatedRectangle clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RotatedRectangle copyWith(void Function(RotatedRectangle) updates) =>
      super.copyWith((message) => updates(message as RotatedRectangle))
          as RotatedRectangle;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RotatedRectangle create() => RotatedRectangle._();
  @$core.override
  RotatedRectangle createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RotatedRectangle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RotatedRectangle>(create);
  static RotatedRectangle? _defaultInstance;

  @$pb.TagNumber(1)
  Point get center => $_getN(0);
  @$pb.TagNumber(1)
  set center(Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCenter() => $_has(0);
  @$pb.TagNumber(1)
  void clearCenter() => $_clearField(1);
  @$pb.TagNumber(1)
  Point ensureCenter() => $_ensure(0);

  @$pb.TagNumber(2)
  Size get size => $_getN(1);
  @$pb.TagNumber(2)
  set size(Size value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);
  @$pb.TagNumber(2)
  Size ensureSize() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get angle => $_getN(2);
  @$pb.TagNumber(3)
  set angle($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAngle() => $_has(2);
  @$pb.TagNumber(3)
  void clearAngle() => $_clearField(3);
}

/// *
///  Message for a feature
class Feature extends $pb.GeneratedMessage {
  factory Feature({
    Point? center,
    RotatedRectangle? ellipse,
  }) {
    final result = create();
    if (center != null) result.center = center;
    if (ellipse != null) result.ellipse = ellipse;
    return result;
  }

  Feature._();

  factory Feature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Feature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Feature',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'center', subBuilder: Point.create)
    ..aOM<RotatedRectangle>(2, _omitFieldNames ? '' : 'ellipse',
        subBuilder: RotatedRectangle.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Feature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Feature copyWith(void Function(Feature) updates) =>
      super.copyWith((message) => updates(message as Feature)) as Feature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  @$core.override
  Feature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Feature getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature>(create);
  static Feature? _defaultInstance;

  @$pb.TagNumber(1)
  Point get center => $_getN(0);
  @$pb.TagNumber(1)
  set center(Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCenter() => $_has(0);
  @$pb.TagNumber(1)
  void clearCenter() => $_clearField(1);
  @$pb.TagNumber(1)
  Point ensureCenter() => $_ensure(0);

  @$pb.TagNumber(2)
  RotatedRectangle get ellipse => $_getN(1);
  @$pb.TagNumber(2)
  set ellipse(RotatedRectangle value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEllipse() => $_has(1);
  @$pb.TagNumber(2)
  void clearEllipse() => $_clearField(2);
  @$pb.TagNumber(2)
  RotatedRectangle ensureEllipse() => $_ensure(1);
}

/// *
///  Left and right glint
class Glints extends $pb.GeneratedMessage {
  factory Glints({
    Feature? left,
    Feature? right,
  }) {
    final result = create();
    if (left != null) result.left = left;
    if (right != null) result.right = right;
    return result;
  }

  Glints._();

  factory Glints.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Glints.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Glints',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Feature>(1, _omitFieldNames ? '' : 'left', subBuilder: Feature.create)
    ..aOM<Feature>(2, _omitFieldNames ? '' : 'right',
        subBuilder: Feature.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Glints clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Glints copyWith(void Function(Glints) updates) =>
      super.copyWith((message) => updates(message as Glints)) as Glints;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Glints create() => Glints._();
  @$core.override
  Glints createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Glints getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Glints>(create);
  static Glints? _defaultInstance;

  @$pb.TagNumber(1)
  Feature get left => $_getN(0);
  @$pb.TagNumber(1)
  set left(Feature value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => $_clearField(1);
  @$pb.TagNumber(1)
  Feature ensureLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Feature get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(Feature value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => $_clearField(2);
  @$pb.TagNumber(2)
  Feature ensureRight() => $_ensure(1);
}

/// *
///  Message for a gaze
class Gaze extends $pb.GeneratedMessage {
  factory Gaze({
    Point? raw,
    Point? smoothed,
  }) {
    final result = create();
    if (raw != null) result.raw = raw;
    if (smoothed != null) result.smoothed = smoothed;
    return result;
  }

  Gaze._();

  factory Gaze.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Gaze.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Gaze',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'raw', subBuilder: Point.create)
    ..aOM<Point>(2, _omitFieldNames ? '' : 'smoothed', subBuilder: Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gaze clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gaze copyWith(void Function(Gaze) updates) =>
      super.copyWith((message) => updates(message as Gaze)) as Gaze;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gaze create() => Gaze._();
  @$core.override
  Gaze createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Gaze getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gaze>(create);
  static Gaze? _defaultInstance;

  @$pb.TagNumber(1)
  Point get raw => $_getN(0);
  @$pb.TagNumber(1)
  set raw(Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRaw() => $_has(0);
  @$pb.TagNumber(1)
  void clearRaw() => $_clearField(1);
  @$pb.TagNumber(1)
  Point ensureRaw() => $_ensure(0);

  @$pb.TagNumber(2)
  Point get smoothed => $_getN(1);
  @$pb.TagNumber(2)
  set smoothed(Point value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSmoothed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSmoothed() => $_clearField(2);
  @$pb.TagNumber(2)
  Point ensureSmoothed() => $_ensure(1);
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
    Rectangle? boundingRect,
    Gaze? gaze,
  }) {
    final result = create();
    if (keyPoint != null) result.keyPoint = keyPoint;
    if (iris != null) result.iris = iris;
    if (pupil != null) result.pupil = pupil;
    if (glints != null) result.glints = glints;
    if (distance != null) result.distance = distance;
    if (boundingRect != null) result.boundingRect = boundingRect;
    if (gaze != null) result.gaze = gaze;
    return result;
  }

  Eye._();

  factory Eye.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Eye.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Eye',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'keyPoint',
        protoName: 'keyPoint', subBuilder: Point.create)
    ..aOM<Feature>(2, _omitFieldNames ? '' : 'iris', subBuilder: Feature.create)
    ..aOM<Feature>(3, _omitFieldNames ? '' : 'pupil',
        subBuilder: Feature.create)
    ..aOM<Glints>(4, _omitFieldNames ? '' : 'glints', subBuilder: Glints.create)
    ..aD(5, _omitFieldNames ? '' : 'distance')
    ..aOM<Rectangle>(6, _omitFieldNames ? '' : 'boundingRect',
        protoName: 'boundingRect', subBuilder: Rectangle.create)
    ..aOM<Gaze>(7, _omitFieldNames ? '' : 'gaze', subBuilder: Gaze.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Eye clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Eye copyWith(void Function(Eye) updates) =>
      super.copyWith((message) => updates(message as Eye)) as Eye;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Eye create() => Eye._();
  @$core.override
  Eye createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Eye getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eye>(create);
  static Eye? _defaultInstance;

  @$pb.TagNumber(1)
  Point get keyPoint => $_getN(0);
  @$pb.TagNumber(1)
  set keyPoint(Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKeyPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyPoint() => $_clearField(1);
  @$pb.TagNumber(1)
  Point ensureKeyPoint() => $_ensure(0);

  @$pb.TagNumber(2)
  Feature get iris => $_getN(1);
  @$pb.TagNumber(2)
  set iris(Feature value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasIris() => $_has(1);
  @$pb.TagNumber(2)
  void clearIris() => $_clearField(2);
  @$pb.TagNumber(2)
  Feature ensureIris() => $_ensure(1);

  @$pb.TagNumber(3)
  Feature get pupil => $_getN(2);
  @$pb.TagNumber(3)
  set pupil(Feature value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPupil() => $_has(2);
  @$pb.TagNumber(3)
  void clearPupil() => $_clearField(3);
  @$pb.TagNumber(3)
  Feature ensurePupil() => $_ensure(2);

  @$pb.TagNumber(4)
  Glints get glints => $_getN(3);
  @$pb.TagNumber(4)
  set glints(Glints value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGlints() => $_has(3);
  @$pb.TagNumber(4)
  void clearGlints() => $_clearField(4);
  @$pb.TagNumber(4)
  Glints ensureGlints() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.double get distance => $_getN(4);
  @$pb.TagNumber(5)
  set distance($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearDistance() => $_clearField(5);

  @$pb.TagNumber(6)
  Rectangle get boundingRect => $_getN(5);
  @$pb.TagNumber(6)
  set boundingRect(Rectangle value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasBoundingRect() => $_has(5);
  @$pb.TagNumber(6)
  void clearBoundingRect() => $_clearField(6);
  @$pb.TagNumber(6)
  Rectangle ensureBoundingRect() => $_ensure(5);

  @$pb.TagNumber(7)
  Gaze get gaze => $_getN(6);
  @$pb.TagNumber(7)
  set gaze(Gaze value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasGaze() => $_has(6);
  @$pb.TagNumber(7)
  void clearGaze() => $_clearField(7);
  @$pb.TagNumber(7)
  Gaze ensureGaze() => $_ensure(6);
}

/// *
///  Message for a pair of eyes
class Eyes extends $pb.GeneratedMessage {
  factory Eyes({
    Eye? left,
    Eye? right,
  }) {
    final result = create();
    if (left != null) result.left = left;
    if (right != null) result.right = right;
    return result;
  }

  Eyes._();

  factory Eyes.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Eyes.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Eyes',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Eye>(1, _omitFieldNames ? '' : 'left', subBuilder: Eye.create)
    ..aOM<Eye>(2, _omitFieldNames ? '' : 'right', subBuilder: Eye.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Eyes clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Eyes copyWith(void Function(Eyes) updates) =>
      super.copyWith((message) => updates(message as Eyes)) as Eyes;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Eyes create() => Eyes._();
  @$core.override
  Eyes createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Eyes getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eyes>(create);
  static Eyes? _defaultInstance;

  @$pb.TagNumber(1)
  Eye get left => $_getN(0);
  @$pb.TagNumber(1)
  set left(Eye value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => $_clearField(1);
  @$pb.TagNumber(1)
  Eye ensureLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Eye get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(Eye value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => $_clearField(2);
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
    $core.List<$core.int>? id,
  }) {
    final result = create();
    if (boundingRect != null) result.boundingRect = boundingRect;
    if (eyes != null) result.eyes = eyes;
    if (id != null) result.id = id;
    return result;
  }

  Face._();

  factory Face.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Face.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Face',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aOM<Rectangle>(1, _omitFieldNames ? '' : 'boundingRect',
        protoName: 'boundingRect', subBuilder: Rectangle.create)
    ..aOM<Eyes>(2, _omitFieldNames ? '' : 'eyes', subBuilder: Eyes.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Face clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Face copyWith(void Function(Face) updates) =>
      super.copyWith((message) => updates(message as Face)) as Face;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Face create() => Face._();
  @$core.override
  Face createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Face getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Face>(create);
  static Face? _defaultInstance;

  @$pb.TagNumber(1)
  Rectangle get boundingRect => $_getN(0);
  @$pb.TagNumber(1)
  set boundingRect(Rectangle value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBoundingRect() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoundingRect() => $_clearField(1);
  @$pb.TagNumber(1)
  Rectangle ensureBoundingRect() => $_ensure(0);

  @$pb.TagNumber(2)
  Eyes get eyes => $_getN(1);
  @$pb.TagNumber(2)
  set eyes(Eyes value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEyes() => $_has(1);
  @$pb.TagNumber(2)
  void clearEyes() => $_clearField(2);
  @$pb.TagNumber(2)
  Eyes ensureEyes() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get id => $_getN(2);
  @$pb.TagNumber(3)
  set id($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);
}

/// *
///  Single image in grayscale raw bytes
class Mat extends $pb.GeneratedMessage {
  factory Mat({
    $core.int? width,
    $core.int? height,
    $core.List<$core.int>? data,
    Mat_MatType? type,
  }) {
    final result = create();
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (data != null) result.data = data;
    if (type != null) result.type = type;
    return result;
  }

  Mat._();

  factory Mat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mat',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'Skyle.Types'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'width')
    ..aI(2, _omitFieldNames ? '' : 'height')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aE<Mat_MatType>(4, _omitFieldNames ? '' : 'type',
        enumValues: Mat_MatType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mat copyWith(void Function(Mat) updates) =>
      super.copyWith((message) => updates(message as Mat)) as Mat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mat create() => Mat._();
  @$core.override
  Mat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mat getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mat>(create);
  static Mat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get width => $_getIZ(0);
  @$pb.TagNumber(1)
  set width($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => $_clearField(3);

  @$pb.TagNumber(4)
  Mat_MatType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(Mat_MatType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
