// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ipados.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IPadOS {

 bool? get isOld; bool? get isNotZoomed; IPadModel? get iPadModel;
/// Create a copy of IPadOS
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IPadOSCopyWith<IPadOS> get copyWith => _$IPadOSCopyWithImpl<IPadOS>(this as IPadOS, _$identity);

  /// Serializes this IPadOS to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IPadOS&&(identical(other.isOld, isOld) || other.isOld == isOld)&&(identical(other.isNotZoomed, isNotZoomed) || other.isNotZoomed == isNotZoomed)&&(identical(other.iPadModel, iPadModel) || other.iPadModel == iPadModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isOld,isNotZoomed,iPadModel);

@override
String toString() {
  return 'IPadOS(isOld: $isOld, isNotZoomed: $isNotZoomed, iPadModel: $iPadModel)';
}


}

/// @nodoc
abstract mixin class $IPadOSCopyWith<$Res>  {
  factory $IPadOSCopyWith(IPadOS value, $Res Function(IPadOS) _then) = _$IPadOSCopyWithImpl;
@useResult
$Res call({
 bool? isOld, bool? isNotZoomed, IPadModel? iPadModel
});




}
/// @nodoc
class _$IPadOSCopyWithImpl<$Res>
    implements $IPadOSCopyWith<$Res> {
  _$IPadOSCopyWithImpl(this._self, this._then);

  final IPadOS _self;
  final $Res Function(IPadOS) _then;

/// Create a copy of IPadOS
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isOld = freezed,Object? isNotZoomed = freezed,Object? iPadModel = freezed,}) {
  return _then(_self.copyWith(
isOld: freezed == isOld ? _self.isOld : isOld // ignore: cast_nullable_to_non_nullable
as bool?,isNotZoomed: freezed == isNotZoomed ? _self.isNotZoomed : isNotZoomed // ignore: cast_nullable_to_non_nullable
as bool?,iPadModel: freezed == iPadModel ? _self.iPadModel : iPadModel // ignore: cast_nullable_to_non_nullable
as IPadModel?,
  ));
}

}


/// Adds pattern-matching-related methods to [IPadOS].
extension IPadOSPatterns on IPadOS {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IPadOS value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IPadOS() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IPadOS value)  $default,){
final _that = this;
switch (_that) {
case _IPadOS():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IPadOS value)?  $default,){
final _that = this;
switch (_that) {
case _IPadOS() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isOld,  bool? isNotZoomed,  IPadModel? iPadModel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IPadOS() when $default != null:
return $default(_that.isOld,_that.isNotZoomed,_that.iPadModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isOld,  bool? isNotZoomed,  IPadModel? iPadModel)  $default,) {final _that = this;
switch (_that) {
case _IPadOS():
return $default(_that.isOld,_that.isNotZoomed,_that.iPadModel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isOld,  bool? isNotZoomed,  IPadModel? iPadModel)?  $default,) {final _that = this;
switch (_that) {
case _IPadOS() when $default != null:
return $default(_that.isOld,_that.isNotZoomed,_that.iPadModel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IPadOS implements IPadOS {
  const _IPadOS({this.isOld = false, this.isNotZoomed = false, this.iPadModel = IPadModel.iPad13_10});
  factory _IPadOS.fromJson(Map<String, dynamic> json) => _$IPadOSFromJson(json);

@override@JsonKey() final  bool? isOld;
@override@JsonKey() final  bool? isNotZoomed;
@override@JsonKey() final  IPadModel? iPadModel;

/// Create a copy of IPadOS
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IPadOSCopyWith<_IPadOS> get copyWith => __$IPadOSCopyWithImpl<_IPadOS>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IPadOSToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IPadOS&&(identical(other.isOld, isOld) || other.isOld == isOld)&&(identical(other.isNotZoomed, isNotZoomed) || other.isNotZoomed == isNotZoomed)&&(identical(other.iPadModel, iPadModel) || other.iPadModel == iPadModel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isOld,isNotZoomed,iPadModel);

@override
String toString() {
  return 'IPadOS(isOld: $isOld, isNotZoomed: $isNotZoomed, iPadModel: $iPadModel)';
}


}

/// @nodoc
abstract mixin class _$IPadOSCopyWith<$Res> implements $IPadOSCopyWith<$Res> {
  factory _$IPadOSCopyWith(_IPadOS value, $Res Function(_IPadOS) _then) = __$IPadOSCopyWithImpl;
@override @useResult
$Res call({
 bool? isOld, bool? isNotZoomed, IPadModel? iPadModel
});




}
/// @nodoc
class __$IPadOSCopyWithImpl<$Res>
    implements _$IPadOSCopyWith<$Res> {
  __$IPadOSCopyWithImpl(this._self, this._then);

  final _IPadOS _self;
  final $Res Function(_IPadOS) _then;

/// Create a copy of IPadOS
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isOld = freezed,Object? isNotZoomed = freezed,Object? iPadModel = freezed,}) {
  return _then(_IPadOS(
isOld: freezed == isOld ? _self.isOld : isOld // ignore: cast_nullable_to_non_nullable
as bool?,isNotZoomed: freezed == isNotZoomed ? _self.isNotZoomed : isNotZoomed // ignore: cast_nullable_to_non_nullable
as bool?,iPadModel: freezed == iPadModel ? _self.iPadModel : iPadModel // ignore: cast_nullable_to_non_nullable
as IPadModel?,
  ));
}


}

// dart format on
