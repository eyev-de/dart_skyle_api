// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Switch _$SwitchFromJson(Map<String, dynamic> json) {
  return _Switch.fromJson(json);
}

/// @nodoc
mixin _$Switch {
  bool get isPresent => throw _privateConstructorUsedError;
  SwitchActions get actions => throw _privateConstructorUsedError;
  List<String> get availableActions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwitchCopyWith<Switch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchCopyWith<$Res> {
  factory $SwitchCopyWith(Switch value, $Res Function(Switch) then) =
      _$SwitchCopyWithImpl<$Res, Switch>;
  @useResult
  $Res call(
      {bool isPresent, SwitchActions actions, List<String> availableActions});

  $SwitchActionsCopyWith<$Res> get actions;
}

/// @nodoc
class _$SwitchCopyWithImpl<$Res, $Val extends Switch>
    implements $SwitchCopyWith<$Res> {
  _$SwitchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPresent = null,
    Object? actions = null,
    Object? availableActions = null,
  }) {
    return _then(_value.copyWith(
      isPresent: null == isPresent
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as bool,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as SwitchActions,
      availableActions: null == availableActions
          ? _value.availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SwitchActionsCopyWith<$Res> get actions {
    return $SwitchActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SwitchImplCopyWith<$Res> implements $SwitchCopyWith<$Res> {
  factory _$$SwitchImplCopyWith(
          _$SwitchImpl value, $Res Function(_$SwitchImpl) then) =
      __$$SwitchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPresent, SwitchActions actions, List<String> availableActions});

  @override
  $SwitchActionsCopyWith<$Res> get actions;
}

/// @nodoc
class __$$SwitchImplCopyWithImpl<$Res>
    extends _$SwitchCopyWithImpl<$Res, _$SwitchImpl>
    implements _$$SwitchImplCopyWith<$Res> {
  __$$SwitchImplCopyWithImpl(
      _$SwitchImpl _value, $Res Function(_$SwitchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPresent = null,
    Object? actions = null,
    Object? availableActions = null,
  }) {
    return _then(_$SwitchImpl(
      isPresent: null == isPresent
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as bool,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as SwitchActions,
      availableActions: null == availableActions
          ? _value._availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SwitchImpl implements _Switch {
  const _$SwitchImpl(
      {required this.isPresent,
      required this.actions,
      required final List<String> availableActions})
      : _availableActions = availableActions;

  factory _$SwitchImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwitchImplFromJson(json);

  @override
  final bool isPresent;
  @override
  final SwitchActions actions;
  final List<String> _availableActions;
  @override
  List<String> get availableActions {
    if (_availableActions is EqualUnmodifiableListView)
      return _availableActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableActions);
  }

  @override
  String toString() {
    return 'Switch(isPresent: $isPresent, actions: $actions, availableActions: $availableActions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchImpl &&
            (identical(other.isPresent, isPresent) ||
                other.isPresent == isPresent) &&
            (identical(other.actions, actions) || other.actions == actions) &&
            const DeepCollectionEquality()
                .equals(other._availableActions, _availableActions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPresent, actions,
      const DeepCollectionEquality().hash(_availableActions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchImplCopyWith<_$SwitchImpl> get copyWith =>
      __$$SwitchImplCopyWithImpl<_$SwitchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwitchImplToJson(
      this,
    );
  }
}

abstract class _Switch implements Switch {
  const factory _Switch(
      {required final bool isPresent,
      required final SwitchActions actions,
      required final List<String> availableActions}) = _$SwitchImpl;

  factory _Switch.fromJson(Map<String, dynamic> json) = _$SwitchImpl.fromJson;

  @override
  bool get isPresent;
  @override
  SwitchActions get actions;
  @override
  List<String> get availableActions;
  @override
  @JsonKey(ignore: true)
  _$$SwitchImplCopyWith<_$SwitchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
