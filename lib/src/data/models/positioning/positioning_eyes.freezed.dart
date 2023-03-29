// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positioning_eyes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositioningEyes _$PositioningEyesFromJson(Map<String, dynamic> json) {
  return _PositioningEyes.fromJson(json);
}

/// @nodoc
mixin _$PositioningEyes {
  Point get left => throw _privateConstructorUsedError;
  Point get right => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositioningEyesCopyWith<PositioningEyes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositioningEyesCopyWith<$Res> {
  factory $PositioningEyesCopyWith(
          PositioningEyes value, $Res Function(PositioningEyes) then) =
      _$PositioningEyesCopyWithImpl<$Res, PositioningEyes>;
  @useResult
  $Res call({Point left, Point right});

  $PointCopyWith<$Res> get left;
  $PointCopyWith<$Res> get right;
}

/// @nodoc
class _$PositioningEyesCopyWithImpl<$Res, $Val extends PositioningEyes>
    implements $PositioningEyesCopyWith<$Res> {
  _$PositioningEyesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as Point,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as Point,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get left {
    return $PointCopyWith<$Res>(_value.left, (value) {
      return _then(_value.copyWith(left: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get right {
    return $PointCopyWith<$Res>(_value.right, (value) {
      return _then(_value.copyWith(right: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PositioningEyesCopyWith<$Res>
    implements $PositioningEyesCopyWith<$Res> {
  factory _$$_PositioningEyesCopyWith(
          _$_PositioningEyes value, $Res Function(_$_PositioningEyes) then) =
      __$$_PositioningEyesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Point left, Point right});

  @override
  $PointCopyWith<$Res> get left;
  @override
  $PointCopyWith<$Res> get right;
}

/// @nodoc
class __$$_PositioningEyesCopyWithImpl<$Res>
    extends _$PositioningEyesCopyWithImpl<$Res, _$_PositioningEyes>
    implements _$$_PositioningEyesCopyWith<$Res> {
  __$$_PositioningEyesCopyWithImpl(
      _$_PositioningEyes _value, $Res Function(_$_PositioningEyes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_$_PositioningEyes(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as Point,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositioningEyes implements _PositioningEyes {
  const _$_PositioningEyes(
      {this.left = const Point(), this.right = const Point()});

  factory _$_PositioningEyes.fromJson(Map<String, dynamic> json) =>
      _$$_PositioningEyesFromJson(json);

  @override
  @JsonKey()
  final Point left;
  @override
  @JsonKey()
  final Point right;

  @override
  String toString() {
    return 'PositioningEyes(left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositioningEyes &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, right);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositioningEyesCopyWith<_$_PositioningEyes> get copyWith =>
      __$$_PositioningEyesCopyWithImpl<_$_PositioningEyes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositioningEyesToJson(
      this,
    );
  }
}

abstract class _PositioningEyes implements PositioningEyes {
  const factory _PositioningEyes({final Point left, final Point right}) =
      _$_PositioningEyes;

  factory _PositioningEyes.fromJson(Map<String, dynamic> json) =
      _$_PositioningEyes.fromJson;

  @override
  Point get left;
  @override
  Point get right;
  @override
  @JsonKey(ignore: true)
  _$$_PositioningEyesCopyWith<_$_PositioningEyes> get copyWith =>
      throw _privateConstructorUsedError;
}
