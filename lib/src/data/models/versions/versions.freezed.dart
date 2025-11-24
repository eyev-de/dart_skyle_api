// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'versions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Versions {

 String get firmware; String get eyetracker; String get calib; String get base; BigInt get serial; int get skyleType; bool get isDemo;
/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionsCopyWith<Versions> get copyWith => _$VersionsCopyWithImpl<Versions>(this as Versions, _$identity);

  /// Serializes this Versions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Versions&&(identical(other.firmware, firmware) || other.firmware == firmware)&&(identical(other.eyetracker, eyetracker) || other.eyetracker == eyetracker)&&(identical(other.calib, calib) || other.calib == calib)&&(identical(other.base, base) || other.base == base)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.skyleType, skyleType) || other.skyleType == skyleType)&&(identical(other.isDemo, isDemo) || other.isDemo == isDemo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firmware,eyetracker,calib,base,serial,skyleType,isDemo);

@override
String toString() {
  return 'Versions(firmware: $firmware, eyetracker: $eyetracker, calib: $calib, base: $base, serial: $serial, skyleType: $skyleType, isDemo: $isDemo)';
}


}

/// @nodoc
abstract mixin class $VersionsCopyWith<$Res>  {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) _then) = _$VersionsCopyWithImpl;
@useResult
$Res call({
 String firmware, String eyetracker, String calib, String base, BigInt serial, int skyleType, bool isDemo
});




}
/// @nodoc
class _$VersionsCopyWithImpl<$Res>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._self, this._then);

  final Versions _self;
  final $Res Function(Versions) _then;

/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firmware = null,Object? eyetracker = null,Object? calib = null,Object? base = null,Object? serial = null,Object? skyleType = null,Object? isDemo = null,}) {
  return _then(_self.copyWith(
firmware: null == firmware ? _self.firmware : firmware // ignore: cast_nullable_to_non_nullable
as String,eyetracker: null == eyetracker ? _self.eyetracker : eyetracker // ignore: cast_nullable_to_non_nullable
as String,calib: null == calib ? _self.calib : calib // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as BigInt,skyleType: null == skyleType ? _self.skyleType : skyleType // ignore: cast_nullable_to_non_nullable
as int,isDemo: null == isDemo ? _self.isDemo : isDemo // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Versions].
extension VersionsPatterns on Versions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Versions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Versions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Versions value)  $default,){
final _that = this;
switch (_that) {
case _Versions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Versions value)?  $default,){
final _that = this;
switch (_that) {
case _Versions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firmware,  String eyetracker,  String calib,  String base,  BigInt serial,  int skyleType,  bool isDemo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Versions() when $default != null:
return $default(_that.firmware,_that.eyetracker,_that.calib,_that.base,_that.serial,_that.skyleType,_that.isDemo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firmware,  String eyetracker,  String calib,  String base,  BigInt serial,  int skyleType,  bool isDemo)  $default,) {final _that = this;
switch (_that) {
case _Versions():
return $default(_that.firmware,_that.eyetracker,_that.calib,_that.base,_that.serial,_that.skyleType,_that.isDemo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firmware,  String eyetracker,  String calib,  String base,  BigInt serial,  int skyleType,  bool isDemo)?  $default,) {final _that = this;
switch (_that) {
case _Versions() when $default != null:
return $default(_that.firmware,_that.eyetracker,_that.calib,_that.base,_that.serial,_that.skyleType,_that.isDemo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Versions implements Versions {
  const _Versions({required this.firmware, required this.eyetracker, required this.calib, required this.base, required this.serial, required this.skyleType, required this.isDemo});
  factory _Versions.fromJson(Map<String, dynamic> json) => _$VersionsFromJson(json);

@override final  String firmware;
@override final  String eyetracker;
@override final  String calib;
@override final  String base;
@override final  BigInt serial;
@override final  int skyleType;
@override final  bool isDemo;

/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionsCopyWith<_Versions> get copyWith => __$VersionsCopyWithImpl<_Versions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Versions&&(identical(other.firmware, firmware) || other.firmware == firmware)&&(identical(other.eyetracker, eyetracker) || other.eyetracker == eyetracker)&&(identical(other.calib, calib) || other.calib == calib)&&(identical(other.base, base) || other.base == base)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.skyleType, skyleType) || other.skyleType == skyleType)&&(identical(other.isDemo, isDemo) || other.isDemo == isDemo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firmware,eyetracker,calib,base,serial,skyleType,isDemo);

@override
String toString() {
  return 'Versions(firmware: $firmware, eyetracker: $eyetracker, calib: $calib, base: $base, serial: $serial, skyleType: $skyleType, isDemo: $isDemo)';
}


}

/// @nodoc
abstract mixin class _$VersionsCopyWith<$Res> implements $VersionsCopyWith<$Res> {
  factory _$VersionsCopyWith(_Versions value, $Res Function(_Versions) _then) = __$VersionsCopyWithImpl;
@override @useResult
$Res call({
 String firmware, String eyetracker, String calib, String base, BigInt serial, int skyleType, bool isDemo
});




}
/// @nodoc
class __$VersionsCopyWithImpl<$Res>
    implements _$VersionsCopyWith<$Res> {
  __$VersionsCopyWithImpl(this._self, this._then);

  final _Versions _self;
  final $Res Function(_Versions) _then;

/// Create a copy of Versions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firmware = null,Object? eyetracker = null,Object? calib = null,Object? base = null,Object? serial = null,Object? skyleType = null,Object? isDemo = null,}) {
  return _then(_Versions(
firmware: null == firmware ? _self.firmware : firmware // ignore: cast_nullable_to_non_nullable
as String,eyetracker: null == eyetracker ? _self.eyetracker : eyetracker // ignore: cast_nullable_to_non_nullable
as String,calib: null == calib ? _self.calib : calib // ignore: cast_nullable_to_non_nullable
as String,base: null == base ? _self.base : base // ignore: cast_nullable_to_non_nullable
as String,serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as BigInt,skyleType: null == skyleType ? _self.skyleType : skyleType // ignore: cast_nullable_to_non_nullable
as int,isDemo: null == isDemo ? _self.isDemo : isDemo // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
