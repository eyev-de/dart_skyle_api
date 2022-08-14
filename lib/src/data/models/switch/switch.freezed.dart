// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'switch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$SwitchCopyWithImpl<$Res>;
  $Res call(
      {bool isPresent, SwitchActions actions, List<String> availableActions});

  $SwitchActionsCopyWith<$Res> get actions;
}

/// @nodoc
class _$SwitchCopyWithImpl<$Res> implements $SwitchCopyWith<$Res> {
  _$SwitchCopyWithImpl(this._value, this._then);

  final Switch _value;
  // ignore: unused_field
  final $Res Function(Switch) _then;

  @override
  $Res call({
    Object? isPresent = freezed,
    Object? actions = freezed,
    Object? availableActions = freezed,
  }) {
    return _then(_value.copyWith(
      isPresent: isPresent == freezed
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as bool,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as SwitchActions,
      availableActions: availableActions == freezed
          ? _value.availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $SwitchActionsCopyWith<$Res> get actions {
    return $SwitchActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value));
    });
  }
}

/// @nodoc
abstract class _$$_SwitchCopyWith<$Res> implements $SwitchCopyWith<$Res> {
  factory _$$_SwitchCopyWith(_$_Switch value, $Res Function(_$_Switch) then) =
      __$$_SwitchCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPresent, SwitchActions actions, List<String> availableActions});

  @override
  $SwitchActionsCopyWith<$Res> get actions;
}

/// @nodoc
class __$$_SwitchCopyWithImpl<$Res> extends _$SwitchCopyWithImpl<$Res>
    implements _$$_SwitchCopyWith<$Res> {
  __$$_SwitchCopyWithImpl(_$_Switch _value, $Res Function(_$_Switch) _then)
      : super(_value, (v) => _then(v as _$_Switch));

  @override
  _$_Switch get _value => super._value as _$_Switch;

  @override
  $Res call({
    Object? isPresent = freezed,
    Object? actions = freezed,
    Object? availableActions = freezed,
  }) {
    return _then(_$_Switch(
      isPresent: isPresent == freezed
          ? _value.isPresent
          : isPresent // ignore: cast_nullable_to_non_nullable
              as bool,
      actions: actions == freezed
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as SwitchActions,
      availableActions: availableActions == freezed
          ? _value._availableActions
          : availableActions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Switch implements _Switch {
  const _$_Switch(
      {required this.isPresent,
      required this.actions,
      required final List<String> availableActions})
      : _availableActions = availableActions;

  factory _$_Switch.fromJson(Map<String, dynamic> json) =>
      _$$_SwitchFromJson(json);

  @override
  final bool isPresent;
  @override
  final SwitchActions actions;
  final List<String> _availableActions;
  @override
  List<String> get availableActions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableActions);
  }

  @override
  String toString() {
    return 'Switch(isPresent: $isPresent, actions: $actions, availableActions: $availableActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Switch &&
            const DeepCollectionEquality().equals(other.isPresent, isPresent) &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality()
                .equals(other._availableActions, _availableActions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isPresent),
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(_availableActions));

  @JsonKey(ignore: true)
  @override
  _$$_SwitchCopyWith<_$_Switch> get copyWith =>
      __$$_SwitchCopyWithImpl<_$_Switch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwitchToJson(
      this,
    );
  }
}

abstract class _Switch implements Switch {
  const factory _Switch(
      {required final bool isPresent,
      required final SwitchActions actions,
      required final List<String> availableActions}) = _$_Switch;

  factory _Switch.fromJson(Map<String, dynamic> json) = _$_Switch.fromJson;

  @override
  bool get isPresent;
  @override
  SwitchActions get actions;
  @override
  List<String> get availableActions;
  @override
  @JsonKey(ignore: true)
  _$$_SwitchCopyWith<_$_Switch> get copyWith =>
      throw _privateConstructorUsedError;
}
