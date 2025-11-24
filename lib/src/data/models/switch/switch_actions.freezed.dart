// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwitchActions {

 String get singleClick; String get doubleClick; String get holdClick;
/// Create a copy of SwitchActions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwitchActionsCopyWith<SwitchActions> get copyWith => _$SwitchActionsCopyWithImpl<SwitchActions>(this as SwitchActions, _$identity);

  /// Serializes this SwitchActions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwitchActions&&(identical(other.singleClick, singleClick) || other.singleClick == singleClick)&&(identical(other.doubleClick, doubleClick) || other.doubleClick == doubleClick)&&(identical(other.holdClick, holdClick) || other.holdClick == holdClick));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,singleClick,doubleClick,holdClick);

@override
String toString() {
  return 'SwitchActions(singleClick: $singleClick, doubleClick: $doubleClick, holdClick: $holdClick)';
}


}

/// @nodoc
abstract mixin class $SwitchActionsCopyWith<$Res>  {
  factory $SwitchActionsCopyWith(SwitchActions value, $Res Function(SwitchActions) _then) = _$SwitchActionsCopyWithImpl;
@useResult
$Res call({
 String singleClick, String doubleClick, String holdClick
});




}
/// @nodoc
class _$SwitchActionsCopyWithImpl<$Res>
    implements $SwitchActionsCopyWith<$Res> {
  _$SwitchActionsCopyWithImpl(this._self, this._then);

  final SwitchActions _self;
  final $Res Function(SwitchActions) _then;

/// Create a copy of SwitchActions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? singleClick = null,Object? doubleClick = null,Object? holdClick = null,}) {
  return _then(_self.copyWith(
singleClick: null == singleClick ? _self.singleClick : singleClick // ignore: cast_nullable_to_non_nullable
as String,doubleClick: null == doubleClick ? _self.doubleClick : doubleClick // ignore: cast_nullable_to_non_nullable
as String,holdClick: null == holdClick ? _self.holdClick : holdClick // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SwitchActions].
extension SwitchActionsPatterns on SwitchActions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwitchActions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwitchActions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwitchActions value)  $default,){
final _that = this;
switch (_that) {
case _SwitchActions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwitchActions value)?  $default,){
final _that = this;
switch (_that) {
case _SwitchActions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String singleClick,  String doubleClick,  String holdClick)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwitchActions() when $default != null:
return $default(_that.singleClick,_that.doubleClick,_that.holdClick);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String singleClick,  String doubleClick,  String holdClick)  $default,) {final _that = this;
switch (_that) {
case _SwitchActions():
return $default(_that.singleClick,_that.doubleClick,_that.holdClick);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String singleClick,  String doubleClick,  String holdClick)?  $default,) {final _that = this;
switch (_that) {
case _SwitchActions() when $default != null:
return $default(_that.singleClick,_that.doubleClick,_that.holdClick);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SwitchActions implements SwitchActions {
  const _SwitchActions({required this.singleClick, required this.doubleClick, required this.holdClick});
  factory _SwitchActions.fromJson(Map<String, dynamic> json) => _$SwitchActionsFromJson(json);

@override final  String singleClick;
@override final  String doubleClick;
@override final  String holdClick;

/// Create a copy of SwitchActions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchActionsCopyWith<_SwitchActions> get copyWith => __$SwitchActionsCopyWithImpl<_SwitchActions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwitchActionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchActions&&(identical(other.singleClick, singleClick) || other.singleClick == singleClick)&&(identical(other.doubleClick, doubleClick) || other.doubleClick == doubleClick)&&(identical(other.holdClick, holdClick) || other.holdClick == holdClick));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,singleClick,doubleClick,holdClick);

@override
String toString() {
  return 'SwitchActions(singleClick: $singleClick, doubleClick: $doubleClick, holdClick: $holdClick)';
}


}

/// @nodoc
abstract mixin class _$SwitchActionsCopyWith<$Res> implements $SwitchActionsCopyWith<$Res> {
  factory _$SwitchActionsCopyWith(_SwitchActions value, $Res Function(_SwitchActions) _then) = __$SwitchActionsCopyWithImpl;
@override @useResult
$Res call({
 String singleClick, String doubleClick, String holdClick
});




}
/// @nodoc
class __$SwitchActionsCopyWithImpl<$Res>
    implements _$SwitchActionsCopyWith<$Res> {
  __$SwitchActionsCopyWithImpl(this._self, this._then);

  final _SwitchActions _self;
  final $Res Function(_SwitchActions) _then;

/// Create a copy of SwitchActions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? singleClick = null,Object? doubleClick = null,Object? holdClick = null,}) {
  return _then(_SwitchActions(
singleClick: null == singleClick ? _self.singleClick : singleClick // ignore: cast_nullable_to_non_nullable
as String,doubleClick: null == doubleClick ? _self.doubleClick : doubleClick // ignore: cast_nullable_to_non_nullable
as String,holdClick: null == holdClick ? _self.holdClick : holdClick // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
