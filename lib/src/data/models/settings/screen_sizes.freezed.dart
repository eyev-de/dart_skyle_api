// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_sizes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScreenSizes {

 Size get resolution; Size? get dimensions;
/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScreenSizesCopyWith<ScreenSizes> get copyWith => _$ScreenSizesCopyWithImpl<ScreenSizes>(this as ScreenSizes, _$identity);

  /// Serializes this ScreenSizes to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScreenSizes&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resolution,dimensions);

@override
String toString() {
  return 'ScreenSizes(resolution: $resolution, dimensions: $dimensions)';
}


}

/// @nodoc
abstract mixin class $ScreenSizesCopyWith<$Res>  {
  factory $ScreenSizesCopyWith(ScreenSizes value, $Res Function(ScreenSizes) _then) = _$ScreenSizesCopyWithImpl;
@useResult
$Res call({
 Size resolution, Size? dimensions
});


$SizeCopyWith<$Res> get resolution;$SizeCopyWith<$Res>? get dimensions;

}
/// @nodoc
class _$ScreenSizesCopyWithImpl<$Res>
    implements $ScreenSizesCopyWith<$Res> {
  _$ScreenSizesCopyWithImpl(this._self, this._then);

  final ScreenSizes _self;
  final $Res Function(ScreenSizes) _then;

/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resolution = null,Object? dimensions = freezed,}) {
  return _then(_self.copyWith(
resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as Size,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as Size?,
  ));
}
/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeCopyWith<$Res> get resolution {
  
  return $SizeCopyWith<$Res>(_self.resolution, (value) {
    return _then(_self.copyWith(resolution: value));
  });
}/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
    return null;
  }

  return $SizeCopyWith<$Res>(_self.dimensions!, (value) {
    return _then(_self.copyWith(dimensions: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScreenSizes].
extension ScreenSizesPatterns on ScreenSizes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScreenSizes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScreenSizes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScreenSizes value)  $default,){
final _that = this;
switch (_that) {
case _ScreenSizes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScreenSizes value)?  $default,){
final _that = this;
switch (_that) {
case _ScreenSizes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Size resolution,  Size? dimensions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScreenSizes() when $default != null:
return $default(_that.resolution,_that.dimensions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Size resolution,  Size? dimensions)  $default,) {final _that = this;
switch (_that) {
case _ScreenSizes():
return $default(_that.resolution,_that.dimensions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Size resolution,  Size? dimensions)?  $default,) {final _that = this;
switch (_that) {
case _ScreenSizes() when $default != null:
return $default(_that.resolution,_that.dimensions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScreenSizes implements ScreenSizes {
  const _ScreenSizes({this.resolution = const Size(width: 1920, height: 1080), this.dimensions});
  factory _ScreenSizes.fromJson(Map<String, dynamic> json) => _$ScreenSizesFromJson(json);

@override@JsonKey() final  Size resolution;
@override final  Size? dimensions;

/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScreenSizesCopyWith<_ScreenSizes> get copyWith => __$ScreenSizesCopyWithImpl<_ScreenSizes>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScreenSizesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScreenSizes&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resolution,dimensions);

@override
String toString() {
  return 'ScreenSizes(resolution: $resolution, dimensions: $dimensions)';
}


}

/// @nodoc
abstract mixin class _$ScreenSizesCopyWith<$Res> implements $ScreenSizesCopyWith<$Res> {
  factory _$ScreenSizesCopyWith(_ScreenSizes value, $Res Function(_ScreenSizes) _then) = __$ScreenSizesCopyWithImpl;
@override @useResult
$Res call({
 Size resolution, Size? dimensions
});


@override $SizeCopyWith<$Res> get resolution;@override $SizeCopyWith<$Res>? get dimensions;

}
/// @nodoc
class __$ScreenSizesCopyWithImpl<$Res>
    implements _$ScreenSizesCopyWith<$Res> {
  __$ScreenSizesCopyWithImpl(this._self, this._then);

  final _ScreenSizes _self;
  final $Res Function(_ScreenSizes) _then;

/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resolution = null,Object? dimensions = freezed,}) {
  return _then(_ScreenSizes(
resolution: null == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as Size,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as Size?,
  ));
}

/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeCopyWith<$Res> get resolution {
  
  return $SizeCopyWith<$Res>(_self.resolution, (value) {
    return _then(_self.copyWith(resolution: value));
  });
}/// Create a copy of ScreenSizes
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SizeCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
    return null;
  }

  return $SizeCopyWith<$Res>(_self.dimensions!, (value) {
    return _then(_self.copyWith(dimensions: value));
  });
}
}

// dart format on
