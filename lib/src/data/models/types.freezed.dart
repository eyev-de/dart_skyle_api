// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Point {

 double get x; double get y;
/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PointCopyWith<Point> get copyWith => _$PointCopyWithImpl<Point>(this as Point, _$identity);

  /// Serializes this Point to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Point&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'Point(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $PointCopyWith<$Res>  {
  factory $PointCopyWith(Point value, $Res Function(Point) _then) = _$PointCopyWithImpl;
@useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class _$PointCopyWithImpl<$Res>
    implements $PointCopyWith<$Res> {
  _$PointCopyWithImpl(this._self, this._then);

  final Point _self;
  final $Res Function(Point) _then;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Point].
extension PointPatterns on Point {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Point value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Point() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Point value)  $default,){
final _that = this;
switch (_that) {
case _Point():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Point value)?  $default,){
final _that = this;
switch (_that) {
case _Point() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double x,  double y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Point() when $default != null:
return $default(_that.x,_that.y);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double x,  double y)  $default,) {final _that = this;
switch (_that) {
case _Point():
return $default(_that.x,_that.y);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double x,  double y)?  $default,) {final _that = this;
switch (_that) {
case _Point() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Point extends Point {
  const _Point({this.x = 0.0, this.y = 0.0}): super._();
  factory _Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);

@override@JsonKey() final  double x;
@override@JsonKey() final  double y;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PointCopyWith<_Point> get copyWith => __$PointCopyWithImpl<_Point>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Point&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'Point(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$PointCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$PointCopyWith(_Point value, $Res Function(_Point) _then) = __$PointCopyWithImpl;
@override @useResult
$Res call({
 double x, double y
});




}
/// @nodoc
class __$PointCopyWithImpl<$Res>
    implements _$PointCopyWith<$Res> {
  __$PointCopyWithImpl(this._self, this._then);

  final _Point _self;
  final $Res Function(_Point) _then;

/// Create a copy of Point
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_Point(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Size {

 double get width; double get height;
/// Create a copy of Size
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SizeCopyWith<Size> get copyWith => _$SizeCopyWithImpl<Size>(this as Size, _$identity);

  /// Serializes this Size to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Size&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height);

@override
String toString() {
  return 'Size(width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $SizeCopyWith<$Res>  {
  factory $SizeCopyWith(Size value, $Res Function(Size) _then) = _$SizeCopyWithImpl;
@useResult
$Res call({
 double width, double height
});




}
/// @nodoc
class _$SizeCopyWithImpl<$Res>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._self, this._then);

  final Size _self;
  final $Res Function(Size) _then;

/// Create a copy of Size
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = null,Object? height = null,}) {
  return _then(_self.copyWith(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Size].
extension SizePatterns on Size {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Size value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Size() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Size value)  $default,){
final _that = this;
switch (_that) {
case _Size():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Size value)?  $default,){
final _that = this;
switch (_that) {
case _Size() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double width,  double height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Size() when $default != null:
return $default(_that.width,_that.height);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double width,  double height)  $default,) {final _that = this;
switch (_that) {
case _Size():
return $default(_that.width,_that.height);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double width,  double height)?  $default,) {final _that = this;
switch (_that) {
case _Size() when $default != null:
return $default(_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Size implements Size {
  const _Size({this.width = 0.0, this.height = 0.0});
  factory _Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);

@override@JsonKey() final  double width;
@override@JsonKey() final  double height;

/// Create a copy of Size
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SizeCopyWith<_Size> get copyWith => __$SizeCopyWithImpl<_Size>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SizeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Size&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height);

@override
String toString() {
  return 'Size(width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$SizeCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$SizeCopyWith(_Size value, $Res Function(_Size) _then) = __$SizeCopyWithImpl;
@override @useResult
$Res call({
 double width, double height
});




}
/// @nodoc
class __$SizeCopyWithImpl<$Res>
    implements _$SizeCopyWith<$Res> {
  __$SizeCopyWithImpl(this._self, this._then);

  final _Size _self;
  final $Res Function(_Size) _then;

/// Create a copy of Size
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = null,Object? height = null,}) {
  return _then(_Size(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Rect {

 Point get topLeft; Size get size;
/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RectCopyWith<Rect> get copyWith => _$RectCopyWithImpl<Rect>(this as Rect, _$identity);

  /// Serializes this Rect to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rect&&(identical(other.topLeft, topLeft) || other.topLeft == topLeft)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topLeft,size);

@override
String toString() {
  return 'Rect(topLeft: $topLeft, size: $size)';
}


}

/// @nodoc
abstract mixin class $RectCopyWith<$Res>  {
  factory $RectCopyWith(Rect value, $Res Function(Rect) _then) = _$RectCopyWithImpl;
@useResult
$Res call({
 Point topLeft, Size size
});


$PointCopyWith<$Res> get topLeft;$SizeCopyWith<$Res> get size;

}
/// @nodoc
class _$RectCopyWithImpl<$Res>
    implements $RectCopyWith<$Res> {
  _$RectCopyWithImpl(this._self, this._then);

  final Rect _self;
  final $Res Function(Rect) _then;

/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topLeft = null,Object? size = null,}) {
  return _then(_self.copyWith(
topLeft: null == topLeft ? _self.topLeft : topLeft // ignore: cast_nullable_to_non_nullable
as Point,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as Size,
  ));
}
/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get topLeft {
  
  return $PointCopyWith<$Res>(_self.topLeft, (value) {
    return _then(_self.copyWith(topLeft: value));
  });
}/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeCopyWith<$Res> get size {
  
  return $SizeCopyWith<$Res>(_self.size, (value) {
    return _then(_self.copyWith(size: value));
  });
}
}


/// Adds pattern-matching-related methods to [Rect].
extension RectPatterns on Rect {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rect value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rect() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rect value)  $default,){
final _that = this;
switch (_that) {
case _Rect():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rect value)?  $default,){
final _that = this;
switch (_that) {
case _Rect() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Point topLeft,  Size size)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rect() when $default != null:
return $default(_that.topLeft,_that.size);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Point topLeft,  Size size)  $default,) {final _that = this;
switch (_that) {
case _Rect():
return $default(_that.topLeft,_that.size);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Point topLeft,  Size size)?  $default,) {final _that = this;
switch (_that) {
case _Rect() when $default != null:
return $default(_that.topLeft,_that.size);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rect implements Rect {
  const _Rect({this.topLeft = const Point(), this.size = const Size()});
  factory _Rect.fromJson(Map<String, dynamic> json) => _$RectFromJson(json);

@override@JsonKey() final  Point topLeft;
@override@JsonKey() final  Size size;

/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RectCopyWith<_Rect> get copyWith => __$RectCopyWithImpl<_Rect>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rect&&(identical(other.topLeft, topLeft) || other.topLeft == topLeft)&&(identical(other.size, size) || other.size == size));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,topLeft,size);

@override
String toString() {
  return 'Rect(topLeft: $topLeft, size: $size)';
}


}

/// @nodoc
abstract mixin class _$RectCopyWith<$Res> implements $RectCopyWith<$Res> {
  factory _$RectCopyWith(_Rect value, $Res Function(_Rect) _then) = __$RectCopyWithImpl;
@override @useResult
$Res call({
 Point topLeft, Size size
});


@override $PointCopyWith<$Res> get topLeft;@override $SizeCopyWith<$Res> get size;

}
/// @nodoc
class __$RectCopyWithImpl<$Res>
    implements _$RectCopyWith<$Res> {
  __$RectCopyWithImpl(this._self, this._then);

  final _Rect _self;
  final $Res Function(_Rect) _then;

/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topLeft = null,Object? size = null,}) {
  return _then(_Rect(
topLeft: null == topLeft ? _self.topLeft : topLeft // ignore: cast_nullable_to_non_nullable
as Point,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as Size,
  ));
}

/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get topLeft {
  
  return $PointCopyWith<$Res>(_self.topLeft, (value) {
    return _then(_self.copyWith(topLeft: value));
  });
}/// Create a copy of Rect
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeCopyWith<$Res> get size {
  
  return $SizeCopyWith<$Res>(_self.size, (value) {
    return _then(_self.copyWith(size: value));
  });
}
}


/// @nodoc
mixin _$Feature {

 Point get center;
/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatureCopyWith<Feature> get copyWith => _$FeatureCopyWithImpl<Feature>(this as Feature, _$identity);

  /// Serializes this Feature to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Feature&&(identical(other.center, center) || other.center == center));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,center);

@override
String toString() {
  return 'Feature(center: $center)';
}


}

/// @nodoc
abstract mixin class $FeatureCopyWith<$Res>  {
  factory $FeatureCopyWith(Feature value, $Res Function(Feature) _then) = _$FeatureCopyWithImpl;
@useResult
$Res call({
 Point center
});


$PointCopyWith<$Res> get center;

}
/// @nodoc
class _$FeatureCopyWithImpl<$Res>
    implements $FeatureCopyWith<$Res> {
  _$FeatureCopyWithImpl(this._self, this._then);

  final Feature _self;
  final $Res Function(Feature) _then;

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? center = null,}) {
  return _then(_self.copyWith(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as Point,
  ));
}
/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get center {
  
  return $PointCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}


/// Adds pattern-matching-related methods to [Feature].
extension FeaturePatterns on Feature {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Feature value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Feature value)  $default,){
final _that = this;
switch (_that) {
case _Feature():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Feature value)?  $default,){
final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Point center)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that.center);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Point center)  $default,) {final _that = this;
switch (_that) {
case _Feature():
return $default(_that.center);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Point center)?  $default,) {final _that = this;
switch (_that) {
case _Feature() when $default != null:
return $default(_that.center);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Feature implements Feature {
  const _Feature({this.center = const Point()});
  factory _Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);

@override@JsonKey() final  Point center;

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeatureCopyWith<_Feature> get copyWith => __$FeatureCopyWithImpl<_Feature>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeatureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Feature&&(identical(other.center, center) || other.center == center));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,center);

@override
String toString() {
  return 'Feature(center: $center)';
}


}

/// @nodoc
abstract mixin class _$FeatureCopyWith<$Res> implements $FeatureCopyWith<$Res> {
  factory _$FeatureCopyWith(_Feature value, $Res Function(_Feature) _then) = __$FeatureCopyWithImpl;
@override @useResult
$Res call({
 Point center
});


@override $PointCopyWith<$Res> get center;

}
/// @nodoc
class __$FeatureCopyWithImpl<$Res>
    implements _$FeatureCopyWith<$Res> {
  __$FeatureCopyWithImpl(this._self, this._then);

  final _Feature _self;
  final $Res Function(_Feature) _then;

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? center = null,}) {
  return _then(_Feature(
center: null == center ? _self.center : center // ignore: cast_nullable_to_non_nullable
as Point,
  ));
}

/// Create a copy of Feature
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get center {
  
  return $PointCopyWith<$Res>(_self.center, (value) {
    return _then(_self.copyWith(center: value));
  });
}
}


/// @nodoc
mixin _$Glints {

 Feature get left; Feature get right;
/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GlintsCopyWith<Glints> get copyWith => _$GlintsCopyWithImpl<Glints>(this as Glints, _$identity);

  /// Serializes this Glints to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Glints&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right);

@override
String toString() {
  return 'Glints(left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class $GlintsCopyWith<$Res>  {
  factory $GlintsCopyWith(Glints value, $Res Function(Glints) _then) = _$GlintsCopyWithImpl;
@useResult
$Res call({
 Feature left, Feature right
});


$FeatureCopyWith<$Res> get left;$FeatureCopyWith<$Res> get right;

}
/// @nodoc
class _$GlintsCopyWithImpl<$Res>
    implements $GlintsCopyWith<$Res> {
  _$GlintsCopyWithImpl(this._self, this._then);

  final Glints _self;
  final $Res Function(Glints) _then;

/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? left = null,Object? right = null,}) {
  return _then(_self.copyWith(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as Feature,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as Feature,
  ));
}
/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get left {
  
  return $FeatureCopyWith<$Res>(_self.left, (value) {
    return _then(_self.copyWith(left: value));
  });
}/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get right {
  
  return $FeatureCopyWith<$Res>(_self.right, (value) {
    return _then(_self.copyWith(right: value));
  });
}
}


/// Adds pattern-matching-related methods to [Glints].
extension GlintsPatterns on Glints {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Glints value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Glints() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Glints value)  $default,){
final _that = this;
switch (_that) {
case _Glints():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Glints value)?  $default,){
final _that = this;
switch (_that) {
case _Glints() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Feature left,  Feature right)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Glints() when $default != null:
return $default(_that.left,_that.right);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Feature left,  Feature right)  $default,) {final _that = this;
switch (_that) {
case _Glints():
return $default(_that.left,_that.right);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Feature left,  Feature right)?  $default,) {final _that = this;
switch (_that) {
case _Glints() when $default != null:
return $default(_that.left,_that.right);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Glints implements Glints {
  const _Glints({this.left = const Feature(), this.right = const Feature()});
  factory _Glints.fromJson(Map<String, dynamic> json) => _$GlintsFromJson(json);

@override@JsonKey() final  Feature left;
@override@JsonKey() final  Feature right;

/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GlintsCopyWith<_Glints> get copyWith => __$GlintsCopyWithImpl<_Glints>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GlintsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Glints&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right);

@override
String toString() {
  return 'Glints(left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class _$GlintsCopyWith<$Res> implements $GlintsCopyWith<$Res> {
  factory _$GlintsCopyWith(_Glints value, $Res Function(_Glints) _then) = __$GlintsCopyWithImpl;
@override @useResult
$Res call({
 Feature left, Feature right
});


@override $FeatureCopyWith<$Res> get left;@override $FeatureCopyWith<$Res> get right;

}
/// @nodoc
class __$GlintsCopyWithImpl<$Res>
    implements _$GlintsCopyWith<$Res> {
  __$GlintsCopyWithImpl(this._self, this._then);

  final _Glints _self;
  final $Res Function(_Glints) _then;

/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? left = null,Object? right = null,}) {
  return _then(_Glints(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as Feature,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as Feature,
  ));
}

/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get left {
  
  return $FeatureCopyWith<$Res>(_self.left, (value) {
    return _then(_self.copyWith(left: value));
  });
}/// Create a copy of Glints
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get right {
  
  return $FeatureCopyWith<$Res>(_self.right, (value) {
    return _then(_self.copyWith(right: value));
  });
}
}


/// @nodoc
mixin _$Eye {

 Point get keyPoint; Feature get iris; Feature get pupil; Glints get glints; double get distance;
/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EyeCopyWith<Eye> get copyWith => _$EyeCopyWithImpl<Eye>(this as Eye, _$identity);

  /// Serializes this Eye to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Eye&&(identical(other.keyPoint, keyPoint) || other.keyPoint == keyPoint)&&(identical(other.iris, iris) || other.iris == iris)&&(identical(other.pupil, pupil) || other.pupil == pupil)&&(identical(other.glints, glints) || other.glints == glints)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyPoint,iris,pupil,glints,distance);

@override
String toString() {
  return 'Eye(keyPoint: $keyPoint, iris: $iris, pupil: $pupil, glints: $glints, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $EyeCopyWith<$Res>  {
  factory $EyeCopyWith(Eye value, $Res Function(Eye) _then) = _$EyeCopyWithImpl;
@useResult
$Res call({
 Point keyPoint, Feature iris, Feature pupil, Glints glints, double distance
});


$PointCopyWith<$Res> get keyPoint;$FeatureCopyWith<$Res> get iris;$FeatureCopyWith<$Res> get pupil;$GlintsCopyWith<$Res> get glints;

}
/// @nodoc
class _$EyeCopyWithImpl<$Res>
    implements $EyeCopyWith<$Res> {
  _$EyeCopyWithImpl(this._self, this._then);

  final Eye _self;
  final $Res Function(Eye) _then;

/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyPoint = null,Object? iris = null,Object? pupil = null,Object? glints = null,Object? distance = null,}) {
  return _then(_self.copyWith(
keyPoint: null == keyPoint ? _self.keyPoint : keyPoint // ignore: cast_nullable_to_non_nullable
as Point,iris: null == iris ? _self.iris : iris // ignore: cast_nullable_to_non_nullable
as Feature,pupil: null == pupil ? _self.pupil : pupil // ignore: cast_nullable_to_non_nullable
as Feature,glints: null == glints ? _self.glints : glints // ignore: cast_nullable_to_non_nullable
as Glints,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get keyPoint {
  
  return $PointCopyWith<$Res>(_self.keyPoint, (value) {
    return _then(_self.copyWith(keyPoint: value));
  });
}/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get iris {
  
  return $FeatureCopyWith<$Res>(_self.iris, (value) {
    return _then(_self.copyWith(iris: value));
  });
}/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get pupil {
  
  return $FeatureCopyWith<$Res>(_self.pupil, (value) {
    return _then(_self.copyWith(pupil: value));
  });
}/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GlintsCopyWith<$Res> get glints {
  
  return $GlintsCopyWith<$Res>(_self.glints, (value) {
    return _then(_self.copyWith(glints: value));
  });
}
}


/// Adds pattern-matching-related methods to [Eye].
extension EyePatterns on Eye {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Eye value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Eye() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Eye value)  $default,){
final _that = this;
switch (_that) {
case _Eye():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Eye value)?  $default,){
final _that = this;
switch (_that) {
case _Eye() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Point keyPoint,  Feature iris,  Feature pupil,  Glints glints,  double distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Eye() when $default != null:
return $default(_that.keyPoint,_that.iris,_that.pupil,_that.glints,_that.distance);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Point keyPoint,  Feature iris,  Feature pupil,  Glints glints,  double distance)  $default,) {final _that = this;
switch (_that) {
case _Eye():
return $default(_that.keyPoint,_that.iris,_that.pupil,_that.glints,_that.distance);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Point keyPoint,  Feature iris,  Feature pupil,  Glints glints,  double distance)?  $default,) {final _that = this;
switch (_that) {
case _Eye() when $default != null:
return $default(_that.keyPoint,_that.iris,_that.pupil,_that.glints,_that.distance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Eye implements Eye {
  const _Eye({this.keyPoint = const Point(), this.iris = const Feature(), this.pupil = const Feature(), this.glints = const Glints(), this.distance = 0.0});
  factory _Eye.fromJson(Map<String, dynamic> json) => _$EyeFromJson(json);

@override@JsonKey() final  Point keyPoint;
@override@JsonKey() final  Feature iris;
@override@JsonKey() final  Feature pupil;
@override@JsonKey() final  Glints glints;
@override@JsonKey() final  double distance;

/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EyeCopyWith<_Eye> get copyWith => __$EyeCopyWithImpl<_Eye>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EyeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Eye&&(identical(other.keyPoint, keyPoint) || other.keyPoint == keyPoint)&&(identical(other.iris, iris) || other.iris == iris)&&(identical(other.pupil, pupil) || other.pupil == pupil)&&(identical(other.glints, glints) || other.glints == glints)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyPoint,iris,pupil,glints,distance);

@override
String toString() {
  return 'Eye(keyPoint: $keyPoint, iris: $iris, pupil: $pupil, glints: $glints, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$EyeCopyWith<$Res> implements $EyeCopyWith<$Res> {
  factory _$EyeCopyWith(_Eye value, $Res Function(_Eye) _then) = __$EyeCopyWithImpl;
@override @useResult
$Res call({
 Point keyPoint, Feature iris, Feature pupil, Glints glints, double distance
});


@override $PointCopyWith<$Res> get keyPoint;@override $FeatureCopyWith<$Res> get iris;@override $FeatureCopyWith<$Res> get pupil;@override $GlintsCopyWith<$Res> get glints;

}
/// @nodoc
class __$EyeCopyWithImpl<$Res>
    implements _$EyeCopyWith<$Res> {
  __$EyeCopyWithImpl(this._self, this._then);

  final _Eye _self;
  final $Res Function(_Eye) _then;

/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keyPoint = null,Object? iris = null,Object? pupil = null,Object? glints = null,Object? distance = null,}) {
  return _then(_Eye(
keyPoint: null == keyPoint ? _self.keyPoint : keyPoint // ignore: cast_nullable_to_non_nullable
as Point,iris: null == iris ? _self.iris : iris // ignore: cast_nullable_to_non_nullable
as Feature,pupil: null == pupil ? _self.pupil : pupil // ignore: cast_nullable_to_non_nullable
as Feature,glints: null == glints ? _self.glints : glints // ignore: cast_nullable_to_non_nullable
as Glints,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get keyPoint {
  
  return $PointCopyWith<$Res>(_self.keyPoint, (value) {
    return _then(_self.copyWith(keyPoint: value));
  });
}/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get iris {
  
  return $FeatureCopyWith<$Res>(_self.iris, (value) {
    return _then(_self.copyWith(iris: value));
  });
}/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeatureCopyWith<$Res> get pupil {
  
  return $FeatureCopyWith<$Res>(_self.pupil, (value) {
    return _then(_self.copyWith(pupil: value));
  });
}/// Create a copy of Eye
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GlintsCopyWith<$Res> get glints {
  
  return $GlintsCopyWith<$Res>(_self.glints, (value) {
    return _then(_self.copyWith(glints: value));
  });
}
}


/// @nodoc
mixin _$Eyes {

 Eye get left; Eye get right;
/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EyesCopyWith<Eyes> get copyWith => _$EyesCopyWithImpl<Eyes>(this as Eyes, _$identity);

  /// Serializes this Eyes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Eyes&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right);

@override
String toString() {
  return 'Eyes(left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class $EyesCopyWith<$Res>  {
  factory $EyesCopyWith(Eyes value, $Res Function(Eyes) _then) = _$EyesCopyWithImpl;
@useResult
$Res call({
 Eye left, Eye right
});


$EyeCopyWith<$Res> get left;$EyeCopyWith<$Res> get right;

}
/// @nodoc
class _$EyesCopyWithImpl<$Res>
    implements $EyesCopyWith<$Res> {
  _$EyesCopyWithImpl(this._self, this._then);

  final Eyes _self;
  final $Res Function(Eyes) _then;

/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? left = null,Object? right = null,}) {
  return _then(_self.copyWith(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as Eye,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as Eye,
  ));
}
/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EyeCopyWith<$Res> get left {
  
  return $EyeCopyWith<$Res>(_self.left, (value) {
    return _then(_self.copyWith(left: value));
  });
}/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EyeCopyWith<$Res> get right {
  
  return $EyeCopyWith<$Res>(_self.right, (value) {
    return _then(_self.copyWith(right: value));
  });
}
}


/// Adds pattern-matching-related methods to [Eyes].
extension EyesPatterns on Eyes {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Eyes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Eyes() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Eyes value)  $default,){
final _that = this;
switch (_that) {
case _Eyes():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Eyes value)?  $default,){
final _that = this;
switch (_that) {
case _Eyes() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Eye left,  Eye right)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Eyes() when $default != null:
return $default(_that.left,_that.right);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Eye left,  Eye right)  $default,) {final _that = this;
switch (_that) {
case _Eyes():
return $default(_that.left,_that.right);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Eye left,  Eye right)?  $default,) {final _that = this;
switch (_that) {
case _Eyes() when $default != null:
return $default(_that.left,_that.right);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Eyes implements Eyes {
  const _Eyes({this.left = const Eye(), this.right = const Eye()});
  factory _Eyes.fromJson(Map<String, dynamic> json) => _$EyesFromJson(json);

@override@JsonKey() final  Eye left;
@override@JsonKey() final  Eye right;

/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EyesCopyWith<_Eyes> get copyWith => __$EyesCopyWithImpl<_Eyes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EyesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Eyes&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right);

@override
String toString() {
  return 'Eyes(left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class _$EyesCopyWith<$Res> implements $EyesCopyWith<$Res> {
  factory _$EyesCopyWith(_Eyes value, $Res Function(_Eyes) _then) = __$EyesCopyWithImpl;
@override @useResult
$Res call({
 Eye left, Eye right
});


@override $EyeCopyWith<$Res> get left;@override $EyeCopyWith<$Res> get right;

}
/// @nodoc
class __$EyesCopyWithImpl<$Res>
    implements _$EyesCopyWith<$Res> {
  __$EyesCopyWithImpl(this._self, this._then);

  final _Eyes _self;
  final $Res Function(_Eyes) _then;

/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? left = null,Object? right = null,}) {
  return _then(_Eyes(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as Eye,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as Eye,
  ));
}

/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EyeCopyWith<$Res> get left {
  
  return $EyeCopyWith<$Res>(_self.left, (value) {
    return _then(_self.copyWith(left: value));
  });
}/// Create a copy of Eyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EyeCopyWith<$Res> get right {
  
  return $EyeCopyWith<$Res>(_self.right, (value) {
    return _then(_self.copyWith(right: value));
  });
}
}


/// @nodoc
mixin _$Face {

 Rect get boundingRect; Eyes get eyes;
/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaceCopyWith<Face> get copyWith => _$FaceCopyWithImpl<Face>(this as Face, _$identity);

  /// Serializes this Face to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Face&&(identical(other.boundingRect, boundingRect) || other.boundingRect == boundingRect)&&(identical(other.eyes, eyes) || other.eyes == eyes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,boundingRect,eyes);

@override
String toString() {
  return 'Face(boundingRect: $boundingRect, eyes: $eyes)';
}


}

/// @nodoc
abstract mixin class $FaceCopyWith<$Res>  {
  factory $FaceCopyWith(Face value, $Res Function(Face) _then) = _$FaceCopyWithImpl;
@useResult
$Res call({
 Rect boundingRect, Eyes eyes
});


$RectCopyWith<$Res> get boundingRect;$EyesCopyWith<$Res> get eyes;

}
/// @nodoc
class _$FaceCopyWithImpl<$Res>
    implements $FaceCopyWith<$Res> {
  _$FaceCopyWithImpl(this._self, this._then);

  final Face _self;
  final $Res Function(Face) _then;

/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? boundingRect = null,Object? eyes = null,}) {
  return _then(_self.copyWith(
boundingRect: null == boundingRect ? _self.boundingRect : boundingRect // ignore: cast_nullable_to_non_nullable
as Rect,eyes: null == eyes ? _self.eyes : eyes // ignore: cast_nullable_to_non_nullable
as Eyes,
  ));
}
/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RectCopyWith<$Res> get boundingRect {
  
  return $RectCopyWith<$Res>(_self.boundingRect, (value) {
    return _then(_self.copyWith(boundingRect: value));
  });
}/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EyesCopyWith<$Res> get eyes {
  
  return $EyesCopyWith<$Res>(_self.eyes, (value) {
    return _then(_self.copyWith(eyes: value));
  });
}
}


/// Adds pattern-matching-related methods to [Face].
extension FacePatterns on Face {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Face value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Face() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Face value)  $default,){
final _that = this;
switch (_that) {
case _Face():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Face value)?  $default,){
final _that = this;
switch (_that) {
case _Face() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Rect boundingRect,  Eyes eyes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Face() when $default != null:
return $default(_that.boundingRect,_that.eyes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Rect boundingRect,  Eyes eyes)  $default,) {final _that = this;
switch (_that) {
case _Face():
return $default(_that.boundingRect,_that.eyes);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Rect boundingRect,  Eyes eyes)?  $default,) {final _that = this;
switch (_that) {
case _Face() when $default != null:
return $default(_that.boundingRect,_that.eyes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Face implements Face {
  const _Face({this.boundingRect = const Rect(), this.eyes = const Eyes()});
  factory _Face.fromJson(Map<String, dynamic> json) => _$FaceFromJson(json);

@override@JsonKey() final  Rect boundingRect;
@override@JsonKey() final  Eyes eyes;

/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaceCopyWith<_Face> get copyWith => __$FaceCopyWithImpl<_Face>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Face&&(identical(other.boundingRect, boundingRect) || other.boundingRect == boundingRect)&&(identical(other.eyes, eyes) || other.eyes == eyes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,boundingRect,eyes);

@override
String toString() {
  return 'Face(boundingRect: $boundingRect, eyes: $eyes)';
}


}

/// @nodoc
abstract mixin class _$FaceCopyWith<$Res> implements $FaceCopyWith<$Res> {
  factory _$FaceCopyWith(_Face value, $Res Function(_Face) _then) = __$FaceCopyWithImpl;
@override @useResult
$Res call({
 Rect boundingRect, Eyes eyes
});


@override $RectCopyWith<$Res> get boundingRect;@override $EyesCopyWith<$Res> get eyes;

}
/// @nodoc
class __$FaceCopyWithImpl<$Res>
    implements _$FaceCopyWith<$Res> {
  __$FaceCopyWithImpl(this._self, this._then);

  final _Face _self;
  final $Res Function(_Face) _then;

/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? boundingRect = null,Object? eyes = null,}) {
  return _then(_Face(
boundingRect: null == boundingRect ? _self.boundingRect : boundingRect // ignore: cast_nullable_to_non_nullable
as Rect,eyes: null == eyes ? _self.eyes : eyes // ignore: cast_nullable_to_non_nullable
as Eyes,
  ));
}

/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RectCopyWith<$Res> get boundingRect {
  
  return $RectCopyWith<$Res>(_self.boundingRect, (value) {
    return _then(_self.copyWith(boundingRect: value));
  });
}/// Create a copy of Face
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EyesCopyWith<$Res> get eyes {
  
  return $EyesCopyWith<$Res>(_self.eyes, (value) {
    return _then(_self.copyWith(eyes: value));
  });
}
}


/// @nodoc
mixin _$RawImage {

 int get width; int get height; List<int> get data;
/// Create a copy of RawImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RawImageCopyWith<RawImage> get copyWith => _$RawImageCopyWithImpl<RawImage>(this as RawImage, _$identity);

  /// Serializes this RawImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RawImage&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'RawImage(width: $width, height: $height, data: $data)';
}


}

/// @nodoc
abstract mixin class $RawImageCopyWith<$Res>  {
  factory $RawImageCopyWith(RawImage value, $Res Function(RawImage) _then) = _$RawImageCopyWithImpl;
@useResult
$Res call({
 int width, int height, List<int> data
});




}
/// @nodoc
class _$RawImageCopyWithImpl<$Res>
    implements $RawImageCopyWith<$Res> {
  _$RawImageCopyWithImpl(this._self, this._then);

  final RawImage _self;
  final $Res Function(RawImage) _then;

/// Create a copy of RawImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = null,Object? height = null,Object? data = null,}) {
  return _then(_self.copyWith(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [RawImage].
extension RawImagePatterns on RawImage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RawImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RawImage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RawImage value)  $default,){
final _that = this;
switch (_that) {
case _RawImage():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RawImage value)?  $default,){
final _that = this;
switch (_that) {
case _RawImage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int width,  int height,  List<int> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RawImage() when $default != null:
return $default(_that.width,_that.height,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int width,  int height,  List<int> data)  $default,) {final _that = this;
switch (_that) {
case _RawImage():
return $default(_that.width,_that.height,_that.data);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int width,  int height,  List<int> data)?  $default,) {final _that = this;
switch (_that) {
case _RawImage() when $default != null:
return $default(_that.width,_that.height,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RawImage extends RawImage {
  const _RawImage({this.width = 0, this.height = 0, final  List<int> data = const []}): _data = data,super._();
  factory _RawImage.fromJson(Map<String, dynamic> json) => _$RawImageFromJson(json);

@override@JsonKey() final  int width;
@override@JsonKey() final  int height;
 final  List<int> _data;
@override@JsonKey() List<int> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of RawImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RawImageCopyWith<_RawImage> get copyWith => __$RawImageCopyWithImpl<_RawImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RawImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RawImage&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'RawImage(width: $width, height: $height, data: $data)';
}


}

/// @nodoc
abstract mixin class _$RawImageCopyWith<$Res> implements $RawImageCopyWith<$Res> {
  factory _$RawImageCopyWith(_RawImage value, $Res Function(_RawImage) _then) = __$RawImageCopyWithImpl;
@override @useResult
$Res call({
 int width, int height, List<int> data
});




}
/// @nodoc
class __$RawImageCopyWithImpl<$Res>
    implements _$RawImageCopyWith<$Res> {
  __$RawImageCopyWithImpl(this._self, this._then);

  final _RawImage _self;
  final $Res Function(_RawImage) _then;

/// Create a copy of RawImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = null,Object? height = null,Object? data = null,}) {
  return _then(_RawImage(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$BinocularGaze {

 Point get leftGaze; Point get rightGaze;
/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BinocularGazeCopyWith<BinocularGaze> get copyWith => _$BinocularGazeCopyWithImpl<BinocularGaze>(this as BinocularGaze, _$identity);

  /// Serializes this BinocularGaze to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BinocularGaze&&(identical(other.leftGaze, leftGaze) || other.leftGaze == leftGaze)&&(identical(other.rightGaze, rightGaze) || other.rightGaze == rightGaze));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leftGaze,rightGaze);

@override
String toString() {
  return 'BinocularGaze(leftGaze: $leftGaze, rightGaze: $rightGaze)';
}


}

/// @nodoc
abstract mixin class $BinocularGazeCopyWith<$Res>  {
  factory $BinocularGazeCopyWith(BinocularGaze value, $Res Function(BinocularGaze) _then) = _$BinocularGazeCopyWithImpl;
@useResult
$Res call({
 Point leftGaze, Point rightGaze
});


$PointCopyWith<$Res> get leftGaze;$PointCopyWith<$Res> get rightGaze;

}
/// @nodoc
class _$BinocularGazeCopyWithImpl<$Res>
    implements $BinocularGazeCopyWith<$Res> {
  _$BinocularGazeCopyWithImpl(this._self, this._then);

  final BinocularGaze _self;
  final $Res Function(BinocularGaze) _then;

/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leftGaze = null,Object? rightGaze = null,}) {
  return _then(_self.copyWith(
leftGaze: null == leftGaze ? _self.leftGaze : leftGaze // ignore: cast_nullable_to_non_nullable
as Point,rightGaze: null == rightGaze ? _self.rightGaze : rightGaze // ignore: cast_nullable_to_non_nullable
as Point,
  ));
}
/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get leftGaze {
  
  return $PointCopyWith<$Res>(_self.leftGaze, (value) {
    return _then(_self.copyWith(leftGaze: value));
  });
}/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get rightGaze {
  
  return $PointCopyWith<$Res>(_self.rightGaze, (value) {
    return _then(_self.copyWith(rightGaze: value));
  });
}
}


/// Adds pattern-matching-related methods to [BinocularGaze].
extension BinocularGazePatterns on BinocularGaze {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BinocularGaze value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BinocularGaze() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BinocularGaze value)  $default,){
final _that = this;
switch (_that) {
case _BinocularGaze():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BinocularGaze value)?  $default,){
final _that = this;
switch (_that) {
case _BinocularGaze() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Point leftGaze,  Point rightGaze)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BinocularGaze() when $default != null:
return $default(_that.leftGaze,_that.rightGaze);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Point leftGaze,  Point rightGaze)  $default,) {final _that = this;
switch (_that) {
case _BinocularGaze():
return $default(_that.leftGaze,_that.rightGaze);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Point leftGaze,  Point rightGaze)?  $default,) {final _that = this;
switch (_that) {
case _BinocularGaze() when $default != null:
return $default(_that.leftGaze,_that.rightGaze);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BinocularGaze extends BinocularGaze {
  const _BinocularGaze({this.leftGaze = const Point(), this.rightGaze = const Point()}): super._();
  factory _BinocularGaze.fromJson(Map<String, dynamic> json) => _$BinocularGazeFromJson(json);

@override@JsonKey() final  Point leftGaze;
@override@JsonKey() final  Point rightGaze;

/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BinocularGazeCopyWith<_BinocularGaze> get copyWith => __$BinocularGazeCopyWithImpl<_BinocularGaze>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BinocularGazeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BinocularGaze&&(identical(other.leftGaze, leftGaze) || other.leftGaze == leftGaze)&&(identical(other.rightGaze, rightGaze) || other.rightGaze == rightGaze));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leftGaze,rightGaze);

@override
String toString() {
  return 'BinocularGaze(leftGaze: $leftGaze, rightGaze: $rightGaze)';
}


}

/// @nodoc
abstract mixin class _$BinocularGazeCopyWith<$Res> implements $BinocularGazeCopyWith<$Res> {
  factory _$BinocularGazeCopyWith(_BinocularGaze value, $Res Function(_BinocularGaze) _then) = __$BinocularGazeCopyWithImpl;
@override @useResult
$Res call({
 Point leftGaze, Point rightGaze
});


@override $PointCopyWith<$Res> get leftGaze;@override $PointCopyWith<$Res> get rightGaze;

}
/// @nodoc
class __$BinocularGazeCopyWithImpl<$Res>
    implements _$BinocularGazeCopyWith<$Res> {
  __$BinocularGazeCopyWithImpl(this._self, this._then);

  final _BinocularGaze _self;
  final $Res Function(_BinocularGaze) _then;

/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leftGaze = null,Object? rightGaze = null,}) {
  return _then(_BinocularGaze(
leftGaze: null == leftGaze ? _self.leftGaze : leftGaze // ignore: cast_nullable_to_non_nullable
as Point,rightGaze: null == rightGaze ? _self.rightGaze : rightGaze // ignore: cast_nullable_to_non_nullable
as Point,
  ));
}

/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get leftGaze {
  
  return $PointCopyWith<$Res>(_self.leftGaze, (value) {
    return _then(_self.copyWith(leftGaze: value));
  });
}/// Create a copy of BinocularGaze
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get rightGaze {
  
  return $PointCopyWith<$Res>(_self.rightGaze, (value) {
    return _then(_self.copyWith(rightGaze: value));
  });
}
}

// dart format on
