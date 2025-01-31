// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Point _$PointFromJson(Map<String, dynamic> json) {
  return _Point.fromJson(json);
}

/// @nodoc
mixin _$Point {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  /// Serializes this Point to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Point
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PointCopyWith<Point> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointCopyWith<$Res> {
  factory $PointCopyWith(Point value, $Res Function(Point) then) =
      _$PointCopyWithImpl<$Res, Point>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class _$PointCopyWithImpl<$Res, $Val extends Point>
    implements $PointCopyWith<$Res> {
  _$PointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Point
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PointImplCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$$PointImplCopyWith(
          _$PointImpl value, $Res Function(_$PointImpl) then) =
      __$$PointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$PointImplCopyWithImpl<$Res>
    extends _$PointCopyWithImpl<$Res, _$PointImpl>
    implements _$$PointImplCopyWith<$Res> {
  __$$PointImplCopyWithImpl(
      _$PointImpl _value, $Res Function(_$PointImpl) _then)
      : super(_value, _then);

  /// Create a copy of Point
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$PointImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointImpl extends _Point {
  const _$PointImpl({this.x = 0.0, this.y = 0.0}) : super._();

  factory _$PointImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointImplFromJson(json);

  @override
  @JsonKey()
  final double x;
  @override
  @JsonKey()
  final double y;

  @override
  String toString() {
    return 'Point(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  /// Create a copy of Point
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PointImplCopyWith<_$PointImpl> get copyWith =>
      __$$PointImplCopyWithImpl<_$PointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointImplToJson(
      this,
    );
  }
}

abstract class _Point extends Point {
  const factory _Point({final double x, final double y}) = _$PointImpl;
  const _Point._() : super._();

  factory _Point.fromJson(Map<String, dynamic> json) = _$PointImpl.fromJson;

  @override
  double get x;
  @override
  double get y;

  /// Create a copy of Point
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PointImplCopyWith<_$PointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;

  /// Serializes this Size to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class _$SizeCopyWithImpl<$Res, $Val extends Size>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeImplCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$SizeImplCopyWith(
          _$SizeImpl value, $Res Function(_$SizeImpl) then) =
      __$$SizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height});
}

/// @nodoc
class __$$SizeImplCopyWithImpl<$Res>
    extends _$SizeCopyWithImpl<$Res, _$SizeImpl>
    implements _$$SizeImplCopyWith<$Res> {
  __$$SizeImplCopyWithImpl(_$SizeImpl _value, $Res Function(_$SizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$SizeImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeImpl implements _Size {
  const _$SizeImpl({this.width = 0.0, this.height = 0.0});

  factory _$SizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeImplFromJson(json);

  @override
  @JsonKey()
  final double width;
  @override
  @JsonKey()
  final double height;

  @override
  String toString() {
    return 'Size(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      __$$SizeImplCopyWithImpl<_$SizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeImplToJson(
      this,
    );
  }
}

abstract class _Size implements Size {
  const factory _Size({final double width, final double height}) = _$SizeImpl;

  factory _Size.fromJson(Map<String, dynamic> json) = _$SizeImpl.fromJson;

  @override
  double get width;
  @override
  double get height;

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rect _$RectFromJson(Map<String, dynamic> json) {
  return _Rect.fromJson(json);
}

/// @nodoc
mixin _$Rect {
  Point get topLeft => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;

  /// Serializes this Rect to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RectCopyWith<Rect> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RectCopyWith<$Res> {
  factory $RectCopyWith(Rect value, $Res Function(Rect) then) =
      _$RectCopyWithImpl<$Res, Rect>;
  @useResult
  $Res call({Point topLeft, Size size});

  $PointCopyWith<$Res> get topLeft;
  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class _$RectCopyWithImpl<$Res, $Val extends Rect>
    implements $RectCopyWith<$Res> {
  _$RectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeft = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      topLeft: null == topLeft
          ? _value.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as Point,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
    ) as $Val);
  }

  /// Create a copy of Rect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get topLeft {
    return $PointCopyWith<$Res>(_value.topLeft, (value) {
      return _then(_value.copyWith(topLeft: value) as $Val);
    });
  }

  /// Create a copy of Rect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SizeCopyWith<$Res> get size {
    return $SizeCopyWith<$Res>(_value.size, (value) {
      return _then(_value.copyWith(size: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RectImplCopyWith<$Res> implements $RectCopyWith<$Res> {
  factory _$$RectImplCopyWith(
          _$RectImpl value, $Res Function(_$RectImpl) then) =
      __$$RectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Point topLeft, Size size});

  @override
  $PointCopyWith<$Res> get topLeft;
  @override
  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class __$$RectImplCopyWithImpl<$Res>
    extends _$RectCopyWithImpl<$Res, _$RectImpl>
    implements _$$RectImplCopyWith<$Res> {
  __$$RectImplCopyWithImpl(_$RectImpl _value, $Res Function(_$RectImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rect
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeft = null,
    Object? size = null,
  }) {
    return _then(_$RectImpl(
      topLeft: null == topLeft
          ? _value.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as Point,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RectImpl implements _Rect {
  const _$RectImpl({this.topLeft = const Point(), this.size = const Size()});

  factory _$RectImpl.fromJson(Map<String, dynamic> json) =>
      _$$RectImplFromJson(json);

  @override
  @JsonKey()
  final Point topLeft;
  @override
  @JsonKey()
  final Size size;

  @override
  String toString() {
    return 'Rect(topLeft: $topLeft, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RectImpl &&
            (identical(other.topLeft, topLeft) || other.topLeft == topLeft) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, topLeft, size);

  /// Create a copy of Rect
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RectImplCopyWith<_$RectImpl> get copyWith =>
      __$$RectImplCopyWithImpl<_$RectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RectImplToJson(
      this,
    );
  }
}

abstract class _Rect implements Rect {
  const factory _Rect({final Point topLeft, final Size size}) = _$RectImpl;

  factory _Rect.fromJson(Map<String, dynamic> json) = _$RectImpl.fromJson;

  @override
  Point get topLeft;
  @override
  Size get size;

  /// Create a copy of Rect
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RectImplCopyWith<_$RectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Feature _$FeatureFromJson(Map<String, dynamic> json) {
  return _Feature.fromJson(json);
}

/// @nodoc
mixin _$Feature {
  Point get center => throw _privateConstructorUsedError;

  /// Serializes this Feature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeatureCopyWith<Feature> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureCopyWith<$Res> {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) then) =
      _$FeatureCopyWithImpl<$Res, Feature>;
  @useResult
  $Res call({Point center});

  $PointCopyWith<$Res> get center;
}

/// @nodoc
class _$FeatureCopyWithImpl<$Res, $Val extends Feature>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
  }) {
    return _then(_value.copyWith(
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Point,
    ) as $Val);
  }

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get center {
    return $PointCopyWith<$Res>(_value.center, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeatureImplCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$$FeatureImplCopyWith(
          _$FeatureImpl value, $Res Function(_$FeatureImpl) then) =
      __$$FeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Point center});

  @override
  $PointCopyWith<$Res> get center;
}

/// @nodoc
class __$$FeatureImplCopyWithImpl<$Res>
    extends _$FeatureCopyWithImpl<$Res, _$FeatureImpl>
    implements _$$FeatureImplCopyWith<$Res> {
  __$$FeatureImplCopyWithImpl(
      _$FeatureImpl _value, $Res Function(_$FeatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = null,
  }) {
    return _then(_$FeatureImpl(
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureImpl implements _Feature {
  const _$FeatureImpl({this.center = const Point()});

  factory _$FeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureImplFromJson(json);

  @override
  @JsonKey()
  final Point center;

  @override
  String toString() {
    return 'Feature(center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureImpl &&
            (identical(other.center, center) || other.center == center));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, center);

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      __$$FeatureImplCopyWithImpl<_$FeatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureImplToJson(
      this,
    );
  }
}

abstract class _Feature implements Feature {
  const factory _Feature({final Point center}) = _$FeatureImpl;

  factory _Feature.fromJson(Map<String, dynamic> json) = _$FeatureImpl.fromJson;

  @override
  Point get center;

  /// Create a copy of Feature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeatureImplCopyWith<_$FeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Glints _$GlintsFromJson(Map<String, dynamic> json) {
  return _Glints.fromJson(json);
}

/// @nodoc
mixin _$Glints {
  Feature get left => throw _privateConstructorUsedError;
  Feature get right => throw _privateConstructorUsedError;

  /// Serializes this Glints to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Glints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlintsCopyWith<Glints> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlintsCopyWith<$Res> {
  factory $GlintsCopyWith(Glints value, $Res Function(Glints) then) =
      _$GlintsCopyWithImpl<$Res, Glints>;
  @useResult
  $Res call({Feature left, Feature right});

  $FeatureCopyWith<$Res> get left;
  $FeatureCopyWith<$Res> get right;
}

/// @nodoc
class _$GlintsCopyWithImpl<$Res, $Val extends Glints>
    implements $GlintsCopyWith<$Res> {
  _$GlintsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Glints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as Feature,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as Feature,
    ) as $Val);
  }

  /// Create a copy of Glints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeatureCopyWith<$Res> get left {
    return $FeatureCopyWith<$Res>(_value.left, (value) {
      return _then(_value.copyWith(left: value) as $Val);
    });
  }

  /// Create a copy of Glints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeatureCopyWith<$Res> get right {
    return $FeatureCopyWith<$Res>(_value.right, (value) {
      return _then(_value.copyWith(right: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GlintsImplCopyWith<$Res> implements $GlintsCopyWith<$Res> {
  factory _$$GlintsImplCopyWith(
          _$GlintsImpl value, $Res Function(_$GlintsImpl) then) =
      __$$GlintsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Feature left, Feature right});

  @override
  $FeatureCopyWith<$Res> get left;
  @override
  $FeatureCopyWith<$Res> get right;
}

/// @nodoc
class __$$GlintsImplCopyWithImpl<$Res>
    extends _$GlintsCopyWithImpl<$Res, _$GlintsImpl>
    implements _$$GlintsImplCopyWith<$Res> {
  __$$GlintsImplCopyWithImpl(
      _$GlintsImpl _value, $Res Function(_$GlintsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Glints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_$GlintsImpl(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as Feature,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as Feature,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlintsImpl implements _Glints {
  const _$GlintsImpl(
      {this.left = const Feature(), this.right = const Feature()});

  factory _$GlintsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlintsImplFromJson(json);

  @override
  @JsonKey()
  final Feature left;
  @override
  @JsonKey()
  final Feature right;

  @override
  String toString() {
    return 'Glints(left: $left, right: $right)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlintsImpl &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, left, right);

  /// Create a copy of Glints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlintsImplCopyWith<_$GlintsImpl> get copyWith =>
      __$$GlintsImplCopyWithImpl<_$GlintsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlintsImplToJson(
      this,
    );
  }
}

abstract class _Glints implements Glints {
  const factory _Glints({final Feature left, final Feature right}) =
      _$GlintsImpl;

  factory _Glints.fromJson(Map<String, dynamic> json) = _$GlintsImpl.fromJson;

  @override
  Feature get left;
  @override
  Feature get right;

  /// Create a copy of Glints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlintsImplCopyWith<_$GlintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Eye _$EyeFromJson(Map<String, dynamic> json) {
  return _Eye.fromJson(json);
}

/// @nodoc
mixin _$Eye {
  Point get keyPoint => throw _privateConstructorUsedError;
  Feature get iris => throw _privateConstructorUsedError;
  Feature get pupil => throw _privateConstructorUsedError;
  Glints get glints => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

  /// Serializes this Eye to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EyeCopyWith<Eye> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EyeCopyWith<$Res> {
  factory $EyeCopyWith(Eye value, $Res Function(Eye) then) =
      _$EyeCopyWithImpl<$Res, Eye>;
  @useResult
  $Res call(
      {Point keyPoint,
      Feature iris,
      Feature pupil,
      Glints glints,
      double distance});

  $PointCopyWith<$Res> get keyPoint;
  $FeatureCopyWith<$Res> get iris;
  $FeatureCopyWith<$Res> get pupil;
  $GlintsCopyWith<$Res> get glints;
}

/// @nodoc
class _$EyeCopyWithImpl<$Res, $Val extends Eye> implements $EyeCopyWith<$Res> {
  _$EyeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyPoint = null,
    Object? iris = null,
    Object? pupil = null,
    Object? glints = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      keyPoint: null == keyPoint
          ? _value.keyPoint
          : keyPoint // ignore: cast_nullable_to_non_nullable
              as Point,
      iris: null == iris
          ? _value.iris
          : iris // ignore: cast_nullable_to_non_nullable
              as Feature,
      pupil: null == pupil
          ? _value.pupil
          : pupil // ignore: cast_nullable_to_non_nullable
              as Feature,
      glints: null == glints
          ? _value.glints
          : glints // ignore: cast_nullable_to_non_nullable
              as Glints,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get keyPoint {
    return $PointCopyWith<$Res>(_value.keyPoint, (value) {
      return _then(_value.copyWith(keyPoint: value) as $Val);
    });
  }

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeatureCopyWith<$Res> get iris {
    return $FeatureCopyWith<$Res>(_value.iris, (value) {
      return _then(_value.copyWith(iris: value) as $Val);
    });
  }

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeatureCopyWith<$Res> get pupil {
    return $FeatureCopyWith<$Res>(_value.pupil, (value) {
      return _then(_value.copyWith(pupil: value) as $Val);
    });
  }

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GlintsCopyWith<$Res> get glints {
    return $GlintsCopyWith<$Res>(_value.glints, (value) {
      return _then(_value.copyWith(glints: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EyeImplCopyWith<$Res> implements $EyeCopyWith<$Res> {
  factory _$$EyeImplCopyWith(_$EyeImpl value, $Res Function(_$EyeImpl) then) =
      __$$EyeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Point keyPoint,
      Feature iris,
      Feature pupil,
      Glints glints,
      double distance});

  @override
  $PointCopyWith<$Res> get keyPoint;
  @override
  $FeatureCopyWith<$Res> get iris;
  @override
  $FeatureCopyWith<$Res> get pupil;
  @override
  $GlintsCopyWith<$Res> get glints;
}

/// @nodoc
class __$$EyeImplCopyWithImpl<$Res> extends _$EyeCopyWithImpl<$Res, _$EyeImpl>
    implements _$$EyeImplCopyWith<$Res> {
  __$$EyeImplCopyWithImpl(_$EyeImpl _value, $Res Function(_$EyeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyPoint = null,
    Object? iris = null,
    Object? pupil = null,
    Object? glints = null,
    Object? distance = null,
  }) {
    return _then(_$EyeImpl(
      keyPoint: null == keyPoint
          ? _value.keyPoint
          : keyPoint // ignore: cast_nullable_to_non_nullable
              as Point,
      iris: null == iris
          ? _value.iris
          : iris // ignore: cast_nullable_to_non_nullable
              as Feature,
      pupil: null == pupil
          ? _value.pupil
          : pupil // ignore: cast_nullable_to_non_nullable
              as Feature,
      glints: null == glints
          ? _value.glints
          : glints // ignore: cast_nullable_to_non_nullable
              as Glints,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EyeImpl implements _Eye {
  const _$EyeImpl(
      {this.keyPoint = const Point(),
      this.iris = const Feature(),
      this.pupil = const Feature(),
      this.glints = const Glints(),
      this.distance = 0.0});

  factory _$EyeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EyeImplFromJson(json);

  @override
  @JsonKey()
  final Point keyPoint;
  @override
  @JsonKey()
  final Feature iris;
  @override
  @JsonKey()
  final Feature pupil;
  @override
  @JsonKey()
  final Glints glints;
  @override
  @JsonKey()
  final double distance;

  @override
  String toString() {
    return 'Eye(keyPoint: $keyPoint, iris: $iris, pupil: $pupil, glints: $glints, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EyeImpl &&
            (identical(other.keyPoint, keyPoint) ||
                other.keyPoint == keyPoint) &&
            (identical(other.iris, iris) || other.iris == iris) &&
            (identical(other.pupil, pupil) || other.pupil == pupil) &&
            (identical(other.glints, glints) || other.glints == glints) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyPoint, iris, pupil, glints, distance);

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EyeImplCopyWith<_$EyeImpl> get copyWith =>
      __$$EyeImplCopyWithImpl<_$EyeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EyeImplToJson(
      this,
    );
  }
}

abstract class _Eye implements Eye {
  const factory _Eye(
      {final Point keyPoint,
      final Feature iris,
      final Feature pupil,
      final Glints glints,
      final double distance}) = _$EyeImpl;

  factory _Eye.fromJson(Map<String, dynamic> json) = _$EyeImpl.fromJson;

  @override
  Point get keyPoint;
  @override
  Feature get iris;
  @override
  Feature get pupil;
  @override
  Glints get glints;
  @override
  double get distance;

  /// Create a copy of Eye
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EyeImplCopyWith<_$EyeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Eyes _$EyesFromJson(Map<String, dynamic> json) {
  return _Eyes.fromJson(json);
}

/// @nodoc
mixin _$Eyes {
  Eye get left => throw _privateConstructorUsedError;
  Eye get right => throw _privateConstructorUsedError;

  /// Serializes this Eyes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Eyes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EyesCopyWith<Eyes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EyesCopyWith<$Res> {
  factory $EyesCopyWith(Eyes value, $Res Function(Eyes) then) =
      _$EyesCopyWithImpl<$Res, Eyes>;
  @useResult
  $Res call({Eye left, Eye right});

  $EyeCopyWith<$Res> get left;
  $EyeCopyWith<$Res> get right;
}

/// @nodoc
class _$EyesCopyWithImpl<$Res, $Val extends Eyes>
    implements $EyesCopyWith<$Res> {
  _$EyesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Eyes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as Eye,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as Eye,
    ) as $Val);
  }

  /// Create a copy of Eyes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EyeCopyWith<$Res> get left {
    return $EyeCopyWith<$Res>(_value.left, (value) {
      return _then(_value.copyWith(left: value) as $Val);
    });
  }

  /// Create a copy of Eyes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EyeCopyWith<$Res> get right {
    return $EyeCopyWith<$Res>(_value.right, (value) {
      return _then(_value.copyWith(right: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EyesImplCopyWith<$Res> implements $EyesCopyWith<$Res> {
  factory _$$EyesImplCopyWith(
          _$EyesImpl value, $Res Function(_$EyesImpl) then) =
      __$$EyesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Eye left, Eye right});

  @override
  $EyeCopyWith<$Res> get left;
  @override
  $EyeCopyWith<$Res> get right;
}

/// @nodoc
class __$$EyesImplCopyWithImpl<$Res>
    extends _$EyesCopyWithImpl<$Res, _$EyesImpl>
    implements _$$EyesImplCopyWith<$Res> {
  __$$EyesImplCopyWithImpl(_$EyesImpl _value, $Res Function(_$EyesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Eyes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_$EyesImpl(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as Eye,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as Eye,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EyesImpl implements _Eyes {
  const _$EyesImpl({this.left = const Eye(), this.right = const Eye()});

  factory _$EyesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EyesImplFromJson(json);

  @override
  @JsonKey()
  final Eye left;
  @override
  @JsonKey()
  final Eye right;

  @override
  String toString() {
    return 'Eyes(left: $left, right: $right)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EyesImpl &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, left, right);

  /// Create a copy of Eyes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EyesImplCopyWith<_$EyesImpl> get copyWith =>
      __$$EyesImplCopyWithImpl<_$EyesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EyesImplToJson(
      this,
    );
  }
}

abstract class _Eyes implements Eyes {
  const factory _Eyes({final Eye left, final Eye right}) = _$EyesImpl;

  factory _Eyes.fromJson(Map<String, dynamic> json) = _$EyesImpl.fromJson;

  @override
  Eye get left;
  @override
  Eye get right;

  /// Create a copy of Eyes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EyesImplCopyWith<_$EyesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Face _$FaceFromJson(Map<String, dynamic> json) {
  return _Face.fromJson(json);
}

/// @nodoc
mixin _$Face {
  Rect get boundingRect => throw _privateConstructorUsedError;
  Eyes get eyes => throw _privateConstructorUsedError;

  /// Serializes this Face to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Face
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaceCopyWith<Face> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceCopyWith<$Res> {
  factory $FaceCopyWith(Face value, $Res Function(Face) then) =
      _$FaceCopyWithImpl<$Res, Face>;
  @useResult
  $Res call({Rect boundingRect, Eyes eyes});

  $RectCopyWith<$Res> get boundingRect;
  $EyesCopyWith<$Res> get eyes;
}

/// @nodoc
class _$FaceCopyWithImpl<$Res, $Val extends Face>
    implements $FaceCopyWith<$Res> {
  _$FaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Face
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boundingRect = null,
    Object? eyes = null,
  }) {
    return _then(_value.copyWith(
      boundingRect: null == boundingRect
          ? _value.boundingRect
          : boundingRect // ignore: cast_nullable_to_non_nullable
              as Rect,
      eyes: null == eyes
          ? _value.eyes
          : eyes // ignore: cast_nullable_to_non_nullable
              as Eyes,
    ) as $Val);
  }

  /// Create a copy of Face
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RectCopyWith<$Res> get boundingRect {
    return $RectCopyWith<$Res>(_value.boundingRect, (value) {
      return _then(_value.copyWith(boundingRect: value) as $Val);
    });
  }

  /// Create a copy of Face
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EyesCopyWith<$Res> get eyes {
    return $EyesCopyWith<$Res>(_value.eyes, (value) {
      return _then(_value.copyWith(eyes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FaceImplCopyWith<$Res> implements $FaceCopyWith<$Res> {
  factory _$$FaceImplCopyWith(
          _$FaceImpl value, $Res Function(_$FaceImpl) then) =
      __$$FaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Rect boundingRect, Eyes eyes});

  @override
  $RectCopyWith<$Res> get boundingRect;
  @override
  $EyesCopyWith<$Res> get eyes;
}

/// @nodoc
class __$$FaceImplCopyWithImpl<$Res>
    extends _$FaceCopyWithImpl<$Res, _$FaceImpl>
    implements _$$FaceImplCopyWith<$Res> {
  __$$FaceImplCopyWithImpl(_$FaceImpl _value, $Res Function(_$FaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Face
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boundingRect = null,
    Object? eyes = null,
  }) {
    return _then(_$FaceImpl(
      boundingRect: null == boundingRect
          ? _value.boundingRect
          : boundingRect // ignore: cast_nullable_to_non_nullable
              as Rect,
      eyes: null == eyes
          ? _value.eyes
          : eyes // ignore: cast_nullable_to_non_nullable
              as Eyes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaceImpl implements _Face {
  const _$FaceImpl(
      {this.boundingRect = const Rect(), this.eyes = const Eyes()});

  factory _$FaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaceImplFromJson(json);

  @override
  @JsonKey()
  final Rect boundingRect;
  @override
  @JsonKey()
  final Eyes eyes;

  @override
  String toString() {
    return 'Face(boundingRect: $boundingRect, eyes: $eyes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceImpl &&
            (identical(other.boundingRect, boundingRect) ||
                other.boundingRect == boundingRect) &&
            (identical(other.eyes, eyes) || other.eyes == eyes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, boundingRect, eyes);

  /// Create a copy of Face
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceImplCopyWith<_$FaceImpl> get copyWith =>
      __$$FaceImplCopyWithImpl<_$FaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaceImplToJson(
      this,
    );
  }
}

abstract class _Face implements Face {
  const factory _Face({final Rect boundingRect, final Eyes eyes}) = _$FaceImpl;

  factory _Face.fromJson(Map<String, dynamic> json) = _$FaceImpl.fromJson;

  @override
  Rect get boundingRect;
  @override
  Eyes get eyes;

  /// Create a copy of Face
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceImplCopyWith<_$FaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RawImage _$RawImageFromJson(Map<String, dynamic> json) {
  return _RawImage.fromJson(json);
}

/// @nodoc
mixin _$RawImage {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<int> get data => throw _privateConstructorUsedError;

  /// Serializes this RawImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RawImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RawImageCopyWith<RawImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawImageCopyWith<$Res> {
  factory $RawImageCopyWith(RawImage value, $Res Function(RawImage) then) =
      _$RawImageCopyWithImpl<$Res, RawImage>;
  @useResult
  $Res call({int width, int height, List<int> data});
}

/// @nodoc
class _$RawImageCopyWithImpl<$Res, $Val extends RawImage>
    implements $RawImageCopyWith<$Res> {
  _$RawImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RawImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawImageImplCopyWith<$Res>
    implements $RawImageCopyWith<$Res> {
  factory _$$RawImageImplCopyWith(
          _$RawImageImpl value, $Res Function(_$RawImageImpl) then) =
      __$$RawImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, List<int> data});
}

/// @nodoc
class __$$RawImageImplCopyWithImpl<$Res>
    extends _$RawImageCopyWithImpl<$Res, _$RawImageImpl>
    implements _$$RawImageImplCopyWith<$Res> {
  __$$RawImageImplCopyWithImpl(
      _$RawImageImpl _value, $Res Function(_$RawImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? data = null,
  }) {
    return _then(_$RawImageImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawImageImpl extends _RawImage {
  const _$RawImageImpl(
      {this.width = 0, this.height = 0, final List<int> data = const []})
      : _data = data,
        super._();

  factory _$RawImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawImageImplFromJson(json);

  @override
  @JsonKey()
  final int width;
  @override
  @JsonKey()
  final int height;
  final List<int> _data;
  @override
  @JsonKey()
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RawImage(width: $width, height: $height, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawImageImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, width, height, const DeepCollectionEquality().hash(_data));

  /// Create a copy of RawImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawImageImplCopyWith<_$RawImageImpl> get copyWith =>
      __$$RawImageImplCopyWithImpl<_$RawImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawImageImplToJson(
      this,
    );
  }
}

abstract class _RawImage extends RawImage {
  const factory _RawImage(
      {final int width,
      final int height,
      final List<int> data}) = _$RawImageImpl;
  const _RawImage._() : super._();

  factory _RawImage.fromJson(Map<String, dynamic> json) =
      _$RawImageImpl.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  List<int> get data;

  /// Create a copy of RawImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawImageImplCopyWith<_$RawImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BinocularGaze _$BinocularGazeFromJson(Map<String, dynamic> json) {
  return _BinocularGaze.fromJson(json);
}

/// @nodoc
mixin _$BinocularGaze {
  Point get leftGaze => throw _privateConstructorUsedError;
  Point get rightGaze => throw _privateConstructorUsedError;

  /// Serializes this BinocularGaze to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BinocularGaze
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BinocularGazeCopyWith<BinocularGaze> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BinocularGazeCopyWith<$Res> {
  factory $BinocularGazeCopyWith(
          BinocularGaze value, $Res Function(BinocularGaze) then) =
      _$BinocularGazeCopyWithImpl<$Res, BinocularGaze>;
  @useResult
  $Res call({Point leftGaze, Point rightGaze});

  $PointCopyWith<$Res> get leftGaze;
  $PointCopyWith<$Res> get rightGaze;
}

/// @nodoc
class _$BinocularGazeCopyWithImpl<$Res, $Val extends BinocularGaze>
    implements $BinocularGazeCopyWith<$Res> {
  _$BinocularGazeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BinocularGaze
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftGaze = null,
    Object? rightGaze = null,
  }) {
    return _then(_value.copyWith(
      leftGaze: null == leftGaze
          ? _value.leftGaze
          : leftGaze // ignore: cast_nullable_to_non_nullable
              as Point,
      rightGaze: null == rightGaze
          ? _value.rightGaze
          : rightGaze // ignore: cast_nullable_to_non_nullable
              as Point,
    ) as $Val);
  }

  /// Create a copy of BinocularGaze
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get leftGaze {
    return $PointCopyWith<$Res>(_value.leftGaze, (value) {
      return _then(_value.copyWith(leftGaze: value) as $Val);
    });
  }

  /// Create a copy of BinocularGaze
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get rightGaze {
    return $PointCopyWith<$Res>(_value.rightGaze, (value) {
      return _then(_value.copyWith(rightGaze: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BinocularGazeImplCopyWith<$Res>
    implements $BinocularGazeCopyWith<$Res> {
  factory _$$BinocularGazeImplCopyWith(
          _$BinocularGazeImpl value, $Res Function(_$BinocularGazeImpl) then) =
      __$$BinocularGazeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Point leftGaze, Point rightGaze});

  @override
  $PointCopyWith<$Res> get leftGaze;
  @override
  $PointCopyWith<$Res> get rightGaze;
}

/// @nodoc
class __$$BinocularGazeImplCopyWithImpl<$Res>
    extends _$BinocularGazeCopyWithImpl<$Res, _$BinocularGazeImpl>
    implements _$$BinocularGazeImplCopyWith<$Res> {
  __$$BinocularGazeImplCopyWithImpl(
      _$BinocularGazeImpl _value, $Res Function(_$BinocularGazeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BinocularGaze
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftGaze = null,
    Object? rightGaze = null,
  }) {
    return _then(_$BinocularGazeImpl(
      leftGaze: null == leftGaze
          ? _value.leftGaze
          : leftGaze // ignore: cast_nullable_to_non_nullable
              as Point,
      rightGaze: null == rightGaze
          ? _value.rightGaze
          : rightGaze // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BinocularGazeImpl extends _BinocularGaze {
  const _$BinocularGazeImpl(
      {this.leftGaze = const Point(), this.rightGaze = const Point()})
      : super._();

  factory _$BinocularGazeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BinocularGazeImplFromJson(json);

  @override
  @JsonKey()
  final Point leftGaze;
  @override
  @JsonKey()
  final Point rightGaze;

  @override
  String toString() {
    return 'BinocularGaze(leftGaze: $leftGaze, rightGaze: $rightGaze)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BinocularGazeImpl &&
            (identical(other.leftGaze, leftGaze) ||
                other.leftGaze == leftGaze) &&
            (identical(other.rightGaze, rightGaze) ||
                other.rightGaze == rightGaze));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, leftGaze, rightGaze);

  /// Create a copy of BinocularGaze
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BinocularGazeImplCopyWith<_$BinocularGazeImpl> get copyWith =>
      __$$BinocularGazeImplCopyWithImpl<_$BinocularGazeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BinocularGazeImplToJson(
      this,
    );
  }
}

abstract class _BinocularGaze extends BinocularGaze {
  const factory _BinocularGaze({final Point leftGaze, final Point rightGaze}) =
      _$BinocularGazeImpl;
  const _BinocularGaze._() : super._();

  factory _BinocularGaze.fromJson(Map<String, dynamic> json) =
      _$BinocularGazeImpl.fromJson;

  @override
  Point get leftGaze;
  @override
  Point get rightGaze;

  /// Create a copy of BinocularGaze
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BinocularGazeImplCopyWith<_$BinocularGazeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
