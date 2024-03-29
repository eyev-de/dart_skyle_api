// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SwitchActions _$SwitchActionsFromJson(Map<String, dynamic> json) {
  return _SwitchActions.fromJson(json);
}

/// @nodoc
mixin _$SwitchActions {
  String get singleClick => throw _privateConstructorUsedError;
  String get doubleClick => throw _privateConstructorUsedError;
  String get holdClick => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwitchActionsCopyWith<SwitchActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchActionsCopyWith<$Res> {
  factory $SwitchActionsCopyWith(
          SwitchActions value, $Res Function(SwitchActions) then) =
      _$SwitchActionsCopyWithImpl<$Res, SwitchActions>;
  @useResult
  $Res call({String singleClick, String doubleClick, String holdClick});
}

/// @nodoc
class _$SwitchActionsCopyWithImpl<$Res, $Val extends SwitchActions>
    implements $SwitchActionsCopyWith<$Res> {
  _$SwitchActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? singleClick = null,
    Object? doubleClick = null,
    Object? holdClick = null,
  }) {
    return _then(_value.copyWith(
      singleClick: null == singleClick
          ? _value.singleClick
          : singleClick // ignore: cast_nullable_to_non_nullable
              as String,
      doubleClick: null == doubleClick
          ? _value.doubleClick
          : doubleClick // ignore: cast_nullable_to_non_nullable
              as String,
      holdClick: null == holdClick
          ? _value.holdClick
          : holdClick // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SwitchActionsCopyWith<$Res>
    implements $SwitchActionsCopyWith<$Res> {
  factory _$$_SwitchActionsCopyWith(
          _$_SwitchActions value, $Res Function(_$_SwitchActions) then) =
      __$$_SwitchActionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String singleClick, String doubleClick, String holdClick});
}

/// @nodoc
class __$$_SwitchActionsCopyWithImpl<$Res>
    extends _$SwitchActionsCopyWithImpl<$Res, _$_SwitchActions>
    implements _$$_SwitchActionsCopyWith<$Res> {
  __$$_SwitchActionsCopyWithImpl(
      _$_SwitchActions _value, $Res Function(_$_SwitchActions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? singleClick = null,
    Object? doubleClick = null,
    Object? holdClick = null,
  }) {
    return _then(_$_SwitchActions(
      singleClick: null == singleClick
          ? _value.singleClick
          : singleClick // ignore: cast_nullable_to_non_nullable
              as String,
      doubleClick: null == doubleClick
          ? _value.doubleClick
          : doubleClick // ignore: cast_nullable_to_non_nullable
              as String,
      holdClick: null == holdClick
          ? _value.holdClick
          : holdClick // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SwitchActions implements _SwitchActions {
  const _$_SwitchActions(
      {required this.singleClick,
      required this.doubleClick,
      required this.holdClick});

  factory _$_SwitchActions.fromJson(Map<String, dynamic> json) =>
      _$$_SwitchActionsFromJson(json);

  @override
  final String singleClick;
  @override
  final String doubleClick;
  @override
  final String holdClick;

  @override
  String toString() {
    return 'SwitchActions(singleClick: $singleClick, doubleClick: $doubleClick, holdClick: $holdClick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwitchActions &&
            (identical(other.singleClick, singleClick) ||
                other.singleClick == singleClick) &&
            (identical(other.doubleClick, doubleClick) ||
                other.doubleClick == doubleClick) &&
            (identical(other.holdClick, holdClick) ||
                other.holdClick == holdClick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, singleClick, doubleClick, holdClick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwitchActionsCopyWith<_$_SwitchActions> get copyWith =>
      __$$_SwitchActionsCopyWithImpl<_$_SwitchActions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SwitchActionsToJson(
      this,
    );
  }
}

abstract class _SwitchActions implements SwitchActions {
  const factory _SwitchActions(
      {required final String singleClick,
      required final String doubleClick,
      required final String holdClick}) = _$_SwitchActions;

  factory _SwitchActions.fromJson(Map<String, dynamic> json) =
      _$_SwitchActions.fromJson;

  @override
  String get singleClick;
  @override
  String get doubleClick;
  @override
  String get holdClick;
  @override
  @JsonKey(ignore: true)
  _$$_SwitchActionsCopyWith<_$_SwitchActions> get copyWith =>
      throw _privateConstructorUsedError;
}
