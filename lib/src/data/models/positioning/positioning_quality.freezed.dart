// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positioning_quality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PositioningQuality {

 int get horizontal; int get vertical; int get depth;
/// Create a copy of PositioningQuality
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PositioningQualityCopyWith<PositioningQuality> get copyWith => _$PositioningQualityCopyWithImpl<PositioningQuality>(this as PositioningQuality, _$identity);

  /// Serializes this PositioningQuality to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PositioningQuality&&(identical(other.horizontal, horizontal) || other.horizontal == horizontal)&&(identical(other.vertical, vertical) || other.vertical == vertical)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,horizontal,vertical,depth);

@override
String toString() {
  return 'PositioningQuality(horizontal: $horizontal, vertical: $vertical, depth: $depth)';
}


}

/// @nodoc
abstract mixin class $PositioningQualityCopyWith<$Res>  {
  factory $PositioningQualityCopyWith(PositioningQuality value, $Res Function(PositioningQuality) _then) = _$PositioningQualityCopyWithImpl;
@useResult
$Res call({
 int horizontal, int vertical, int depth
});




}
/// @nodoc
class _$PositioningQualityCopyWithImpl<$Res>
    implements $PositioningQualityCopyWith<$Res> {
  _$PositioningQualityCopyWithImpl(this._self, this._then);

  final PositioningQuality _self;
  final $Res Function(PositioningQuality) _then;

/// Create a copy of PositioningQuality
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? horizontal = null,Object? vertical = null,Object? depth = null,}) {
  return _then(_self.copyWith(
horizontal: null == horizontal ? _self.horizontal : horizontal // ignore: cast_nullable_to_non_nullable
as int,vertical: null == vertical ? _self.vertical : vertical // ignore: cast_nullable_to_non_nullable
as int,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PositioningQuality].
extension PositioningQualityPatterns on PositioningQuality {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PositioningQuality value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PositioningQuality() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PositioningQuality value)  $default,){
final _that = this;
switch (_that) {
case _PositioningQuality():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PositioningQuality value)?  $default,){
final _that = this;
switch (_that) {
case _PositioningQuality() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int horizontal,  int vertical,  int depth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PositioningQuality() when $default != null:
return $default(_that.horizontal,_that.vertical,_that.depth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int horizontal,  int vertical,  int depth)  $default,) {final _that = this;
switch (_that) {
case _PositioningQuality():
return $default(_that.horizontal,_that.vertical,_that.depth);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int horizontal,  int vertical,  int depth)?  $default,) {final _that = this;
switch (_that) {
case _PositioningQuality() when $default != null:
return $default(_that.horizontal,_that.vertical,_that.depth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PositioningQuality implements PositioningQuality {
  const _PositioningQuality({this.horizontal = 0, this.vertical = 0, this.depth = 0});
  factory _PositioningQuality.fromJson(Map<String, dynamic> json) => _$PositioningQualityFromJson(json);

@override@JsonKey() final  int horizontal;
@override@JsonKey() final  int vertical;
@override@JsonKey() final  int depth;

/// Create a copy of PositioningQuality
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PositioningQualityCopyWith<_PositioningQuality> get copyWith => __$PositioningQualityCopyWithImpl<_PositioningQuality>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PositioningQualityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PositioningQuality&&(identical(other.horizontal, horizontal) || other.horizontal == horizontal)&&(identical(other.vertical, vertical) || other.vertical == vertical)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,horizontal,vertical,depth);

@override
String toString() {
  return 'PositioningQuality(horizontal: $horizontal, vertical: $vertical, depth: $depth)';
}


}

/// @nodoc
abstract mixin class _$PositioningQualityCopyWith<$Res> implements $PositioningQualityCopyWith<$Res> {
  factory _$PositioningQualityCopyWith(_PositioningQuality value, $Res Function(_PositioningQuality) _then) = __$PositioningQualityCopyWithImpl;
@override @useResult
$Res call({
 int horizontal, int vertical, int depth
});




}
/// @nodoc
class __$PositioningQualityCopyWithImpl<$Res>
    implements _$PositioningQualityCopyWith<$Res> {
  __$PositioningQualityCopyWithImpl(this._self, this._then);

  final _PositioningQuality _self;
  final $Res Function(_PositioningQuality) _then;

/// Create a copy of PositioningQuality
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? horizontal = null,Object? vertical = null,Object? depth = null,}) {
  return _then(_PositioningQuality(
horizontal: null == horizontal ? _self.horizontal : horizontal // ignore: cast_nullable_to_non_nullable
as int,vertical: null == vertical ? _self.vertical : vertical // ignore: cast_nullable_to_non_nullable
as int,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
