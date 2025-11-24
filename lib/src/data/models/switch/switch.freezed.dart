// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Switch {

 bool get isPresent; SwitchActions get actions; List<String> get availableActions;
/// Create a copy of Switch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwitchCopyWith<Switch> get copyWith => _$SwitchCopyWithImpl<Switch>(this as Switch, _$identity);

  /// Serializes this Switch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Switch&&(identical(other.isPresent, isPresent) || other.isPresent == isPresent)&&(identical(other.actions, actions) || other.actions == actions)&&const DeepCollectionEquality().equals(other.availableActions, availableActions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPresent,actions,const DeepCollectionEquality().hash(availableActions));

@override
String toString() {
  return 'Switch(isPresent: $isPresent, actions: $actions, availableActions: $availableActions)';
}


}

/// @nodoc
abstract mixin class $SwitchCopyWith<$Res>  {
  factory $SwitchCopyWith(Switch value, $Res Function(Switch) _then) = _$SwitchCopyWithImpl;
@useResult
$Res call({
 bool isPresent, SwitchActions actions, List<String> availableActions
});


$SwitchActionsCopyWith<$Res> get actions;

}
/// @nodoc
class _$SwitchCopyWithImpl<$Res>
    implements $SwitchCopyWith<$Res> {
  _$SwitchCopyWithImpl(this._self, this._then);

  final Switch _self;
  final $Res Function(Switch) _then;

/// Create a copy of Switch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPresent = null,Object? actions = null,Object? availableActions = null,}) {
  return _then(_self.copyWith(
isPresent: null == isPresent ? _self.isPresent : isPresent // ignore: cast_nullable_to_non_nullable
as bool,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as SwitchActions,availableActions: null == availableActions ? _self.availableActions : availableActions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of Switch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SwitchActionsCopyWith<$Res> get actions {
  
  return $SwitchActionsCopyWith<$Res>(_self.actions, (value) {
    return _then(_self.copyWith(actions: value));
  });
}
}


/// Adds pattern-matching-related methods to [Switch].
extension SwitchPatterns on Switch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Switch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Switch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Switch value)  $default,){
final _that = this;
switch (_that) {
case _Switch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Switch value)?  $default,){
final _that = this;
switch (_that) {
case _Switch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isPresent,  SwitchActions actions,  List<String> availableActions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Switch() when $default != null:
return $default(_that.isPresent,_that.actions,_that.availableActions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isPresent,  SwitchActions actions,  List<String> availableActions)  $default,) {final _that = this;
switch (_that) {
case _Switch():
return $default(_that.isPresent,_that.actions,_that.availableActions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isPresent,  SwitchActions actions,  List<String> availableActions)?  $default,) {final _that = this;
switch (_that) {
case _Switch() when $default != null:
return $default(_that.isPresent,_that.actions,_that.availableActions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Switch implements Switch {
  const _Switch({required this.isPresent, required this.actions, required final  List<String> availableActions}): _availableActions = availableActions;
  factory _Switch.fromJson(Map<String, dynamic> json) => _$SwitchFromJson(json);

@override final  bool isPresent;
@override final  SwitchActions actions;
 final  List<String> _availableActions;
@override List<String> get availableActions {
  if (_availableActions is EqualUnmodifiableListView) return _availableActions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableActions);
}


/// Create a copy of Switch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchCopyWith<_Switch> get copyWith => __$SwitchCopyWithImpl<_Switch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SwitchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Switch&&(identical(other.isPresent, isPresent) || other.isPresent == isPresent)&&(identical(other.actions, actions) || other.actions == actions)&&const DeepCollectionEquality().equals(other._availableActions, _availableActions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isPresent,actions,const DeepCollectionEquality().hash(_availableActions));

@override
String toString() {
  return 'Switch(isPresent: $isPresent, actions: $actions, availableActions: $availableActions)';
}


}

/// @nodoc
abstract mixin class _$SwitchCopyWith<$Res> implements $SwitchCopyWith<$Res> {
  factory _$SwitchCopyWith(_Switch value, $Res Function(_Switch) _then) = __$SwitchCopyWithImpl;
@override @useResult
$Res call({
 bool isPresent, SwitchActions actions, List<String> availableActions
});


@override $SwitchActionsCopyWith<$Res> get actions;

}
/// @nodoc
class __$SwitchCopyWithImpl<$Res>
    implements _$SwitchCopyWith<$Res> {
  __$SwitchCopyWithImpl(this._self, this._then);

  final _Switch _self;
  final $Res Function(_Switch) _then;

/// Create a copy of Switch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPresent = null,Object? actions = null,Object? availableActions = null,}) {
  return _then(_Switch(
isPresent: null == isPresent ? _self.isPresent : isPresent // ignore: cast_nullable_to_non_nullable
as bool,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as SwitchActions,availableActions: null == availableActions ? _self._availableActions : availableActions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of Switch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SwitchActionsCopyWith<$Res> get actions {
  
  return $SwitchActionsCopyWith<$Res>(_self.actions, (value) {
    return _then(_self.copyWith(actions: value));
  });
}
}

// dart format on
