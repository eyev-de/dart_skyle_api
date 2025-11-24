// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positioning_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PositioningMessage {

 PositioningEyes get eyes; PositioningQuality get quality; PositioningDistance get distance; Face? get face;
/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PositioningMessageCopyWith<PositioningMessage> get copyWith => _$PositioningMessageCopyWithImpl<PositioningMessage>(this as PositioningMessage, _$identity);

  /// Serializes this PositioningMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PositioningMessage&&(identical(other.eyes, eyes) || other.eyes == eyes)&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.face, face) || other.face == face));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eyes,quality,distance,face);

@override
String toString() {
  return 'PositioningMessage(eyes: $eyes, quality: $quality, distance: $distance, face: $face)';
}


}

/// @nodoc
abstract mixin class $PositioningMessageCopyWith<$Res>  {
  factory $PositioningMessageCopyWith(PositioningMessage value, $Res Function(PositioningMessage) _then) = _$PositioningMessageCopyWithImpl;
@useResult
$Res call({
 PositioningEyes eyes, PositioningQuality quality, PositioningDistance distance, Face? face
});


$PositioningEyesCopyWith<$Res> get eyes;$PositioningQualityCopyWith<$Res> get quality;$FaceCopyWith<$Res>? get face;

}
/// @nodoc
class _$PositioningMessageCopyWithImpl<$Res>
    implements $PositioningMessageCopyWith<$Res> {
  _$PositioningMessageCopyWithImpl(this._self, this._then);

  final PositioningMessage _self;
  final $Res Function(PositioningMessage) _then;

/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eyes = null,Object? quality = null,Object? distance = null,Object? face = freezed,}) {
  return _then(_self.copyWith(
eyes: null == eyes ? _self.eyes : eyes // ignore: cast_nullable_to_non_nullable
as PositioningEyes,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as PositioningQuality,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as PositioningDistance,face: freezed == face ? _self.face : face // ignore: cast_nullable_to_non_nullable
as Face?,
  ));
}
/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositioningEyesCopyWith<$Res> get eyes {
  
  return $PositioningEyesCopyWith<$Res>(_self.eyes, (value) {
    return _then(_self.copyWith(eyes: value));
  });
}/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositioningQualityCopyWith<$Res> get quality {
  
  return $PositioningQualityCopyWith<$Res>(_self.quality, (value) {
    return _then(_self.copyWith(quality: value));
  });
}/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaceCopyWith<$Res>? get face {
    if (_self.face == null) {
    return null;
  }

  return $FaceCopyWith<$Res>(_self.face!, (value) {
    return _then(_self.copyWith(face: value));
  });
}
}


/// Adds pattern-matching-related methods to [PositioningMessage].
extension PositioningMessagePatterns on PositioningMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PositioningMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PositioningMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PositioningMessage value)  $default,){
final _that = this;
switch (_that) {
case _PositioningMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PositioningMessage value)?  $default,){
final _that = this;
switch (_that) {
case _PositioningMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PositioningEyes eyes,  PositioningQuality quality,  PositioningDistance distance,  Face? face)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PositioningMessage() when $default != null:
return $default(_that.eyes,_that.quality,_that.distance,_that.face);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PositioningEyes eyes,  PositioningQuality quality,  PositioningDistance distance,  Face? face)  $default,) {final _that = this;
switch (_that) {
case _PositioningMessage():
return $default(_that.eyes,_that.quality,_that.distance,_that.face);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PositioningEyes eyes,  PositioningQuality quality,  PositioningDistance distance,  Face? face)?  $default,) {final _that = this;
switch (_that) {
case _PositioningMessage() when $default != null:
return $default(_that.eyes,_that.quality,_that.distance,_that.face);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PositioningMessage implements PositioningMessage {
  const _PositioningMessage({this.eyes = const PositioningEyes(), this.quality = const PositioningQuality(), this.distance = PositioningDistance.none, this.face});
  factory _PositioningMessage.fromJson(Map<String, dynamic> json) => _$PositioningMessageFromJson(json);

@override@JsonKey() final  PositioningEyes eyes;
@override@JsonKey() final  PositioningQuality quality;
@override@JsonKey() final  PositioningDistance distance;
@override final  Face? face;

/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PositioningMessageCopyWith<_PositioningMessage> get copyWith => __$PositioningMessageCopyWithImpl<_PositioningMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PositioningMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PositioningMessage&&(identical(other.eyes, eyes) || other.eyes == eyes)&&(identical(other.quality, quality) || other.quality == quality)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.face, face) || other.face == face));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eyes,quality,distance,face);

@override
String toString() {
  return 'PositioningMessage(eyes: $eyes, quality: $quality, distance: $distance, face: $face)';
}


}

/// @nodoc
abstract mixin class _$PositioningMessageCopyWith<$Res> implements $PositioningMessageCopyWith<$Res> {
  factory _$PositioningMessageCopyWith(_PositioningMessage value, $Res Function(_PositioningMessage) _then) = __$PositioningMessageCopyWithImpl;
@override @useResult
$Res call({
 PositioningEyes eyes, PositioningQuality quality, PositioningDistance distance, Face? face
});


@override $PositioningEyesCopyWith<$Res> get eyes;@override $PositioningQualityCopyWith<$Res> get quality;@override $FaceCopyWith<$Res>? get face;

}
/// @nodoc
class __$PositioningMessageCopyWithImpl<$Res>
    implements _$PositioningMessageCopyWith<$Res> {
  __$PositioningMessageCopyWithImpl(this._self, this._then);

  final _PositioningMessage _self;
  final $Res Function(_PositioningMessage) _then;

/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eyes = null,Object? quality = null,Object? distance = null,Object? face = freezed,}) {
  return _then(_PositioningMessage(
eyes: null == eyes ? _self.eyes : eyes // ignore: cast_nullable_to_non_nullable
as PositioningEyes,quality: null == quality ? _self.quality : quality // ignore: cast_nullable_to_non_nullable
as PositioningQuality,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as PositioningDistance,face: freezed == face ? _self.face : face // ignore: cast_nullable_to_non_nullable
as Face?,
  ));
}

/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositioningEyesCopyWith<$Res> get eyes {
  
  return $PositioningEyesCopyWith<$Res>(_self.eyes, (value) {
    return _then(_self.copyWith(eyes: value));
  });
}/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositioningQualityCopyWith<$Res> get quality {
  
  return $PositioningQualityCopyWith<$Res>(_self.quality, (value) {
    return _then(_self.copyWith(quality: value));
  });
}/// Create a copy of PositioningMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaceCopyWith<$Res>? get face {
    if (_self.face == null) {
    return null;
  }

  return $FaceCopyWith<$Res>(_self.face!, (value) {
    return _then(_self.copyWith(face: value));
  });
}
}

// dart format on
