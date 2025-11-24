// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positioning_eyes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PositioningEyes {

 Point get left; Point get right;
/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PositioningEyesCopyWith<PositioningEyes> get copyWith => _$PositioningEyesCopyWithImpl<PositioningEyes>(this as PositioningEyes, _$identity);

  /// Serializes this PositioningEyes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PositioningEyes&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right);

@override
String toString() {
  return 'PositioningEyes(left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class $PositioningEyesCopyWith<$Res>  {
  factory $PositioningEyesCopyWith(PositioningEyes value, $Res Function(PositioningEyes) _then) = _$PositioningEyesCopyWithImpl;
@useResult
$Res call({
 Point left, Point right
});


$PointCopyWith<$Res> get left;$PointCopyWith<$Res> get right;

}
/// @nodoc
class _$PositioningEyesCopyWithImpl<$Res>
    implements $PositioningEyesCopyWith<$Res> {
  _$PositioningEyesCopyWithImpl(this._self, this._then);

  final PositioningEyes _self;
  final $Res Function(PositioningEyes) _then;

/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? left = null,Object? right = null,}) {
  return _then(_self.copyWith(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as Point,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as Point,
  ));
}
/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get left {
  
  return $PointCopyWith<$Res>(_self.left, (value) {
    return _then(_self.copyWith(left: value));
  });
}/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get right {
  
  return $PointCopyWith<$Res>(_self.right, (value) {
    return _then(_self.copyWith(right: value));
  });
}
}


/// Adds pattern-matching-related methods to [PositioningEyes].
extension PositioningEyesPatterns on PositioningEyes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PositioningEyes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PositioningEyes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PositioningEyes value)  $default,){
final _that = this;
switch (_that) {
case _PositioningEyes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PositioningEyes value)?  $default,){
final _that = this;
switch (_that) {
case _PositioningEyes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Point left,  Point right)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PositioningEyes() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Point left,  Point right)  $default,) {final _that = this;
switch (_that) {
case _PositioningEyes():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Point left,  Point right)?  $default,) {final _that = this;
switch (_that) {
case _PositioningEyes() when $default != null:
return $default(_that.left,_that.right);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PositioningEyes implements PositioningEyes {
  const _PositioningEyes({this.left = const Point(), this.right = const Point()});
  factory _PositioningEyes.fromJson(Map<String, dynamic> json) => _$PositioningEyesFromJson(json);

@override@JsonKey() final  Point left;
@override@JsonKey() final  Point right;

/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PositioningEyesCopyWith<_PositioningEyes> get copyWith => __$PositioningEyesCopyWithImpl<_PositioningEyes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PositioningEyesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PositioningEyes&&(identical(other.left, left) || other.left == left)&&(identical(other.right, right) || other.right == right));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,left,right);

@override
String toString() {
  return 'PositioningEyes(left: $left, right: $right)';
}


}

/// @nodoc
abstract mixin class _$PositioningEyesCopyWith<$Res> implements $PositioningEyesCopyWith<$Res> {
  factory _$PositioningEyesCopyWith(_PositioningEyes value, $Res Function(_PositioningEyes) _then) = __$PositioningEyesCopyWithImpl;
@override @useResult
$Res call({
 Point left, Point right
});


@override $PointCopyWith<$Res> get left;@override $PointCopyWith<$Res> get right;

}
/// @nodoc
class __$PositioningEyesCopyWithImpl<$Res>
    implements _$PositioningEyesCopyWith<$Res> {
  __$PositioningEyesCopyWithImpl(this._self, this._then);

  final _PositioningEyes _self;
  final $Res Function(_PositioningEyes) _then;

/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? left = null,Object? right = null,}) {
  return _then(_PositioningEyes(
left: null == left ? _self.left : left // ignore: cast_nullable_to_non_nullable
as Point,right: null == right ? _self.right : right // ignore: cast_nullable_to_non_nullable
as Point,
  ));
}

/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get left {
  
  return $PointCopyWith<$Res>(_self.left, (value) {
    return _then(_self.copyWith(left: value));
  });
}/// Create a copy of PositioningEyes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PointCopyWith<$Res> get right {
  
  return $PointCopyWith<$Res>(_self.right, (value) {
    return _then(_self.copyWith(right: value));
  });
}
}

// dart format on
