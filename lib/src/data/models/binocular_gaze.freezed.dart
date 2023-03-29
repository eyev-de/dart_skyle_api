// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'binocular_gaze.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BinocularGaze _$BinocularGazeFromJson(Map<String, dynamic> json) {
  return _BinocularGaze.fromJson(json);
}

/// @nodoc
mixin _$BinocularGaze {
  Point get leftGaze => throw _privateConstructorUsedError;
  Point get rightGaze => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BinocularGazeCopyWith<BinocularGaze> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BinocularGazeCopyWith<$Res> {
  factory $BinocularGazeCopyWith(
          BinocularGaze value, $Res Function(BinocularGaze) then) =
      _$BinocularGazeCopyWithImpl<$Res, BinocularGaze>;
  @useResult
  $Res call({Point leftGaze, Point rightGaze});

  $PointCopyWith<$Res> get leftGaze;
  $PointCopyWith<$Res> get rightGaze;
}

/// @nodoc
class _$BinocularGazeCopyWithImpl<$Res, $Val extends BinocularGaze>
    implements $BinocularGazeCopyWith<$Res> {
  _$BinocularGazeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftGaze = null,
    Object? rightGaze = null,
  }) {
    return _then(_value.copyWith(
      leftGaze: null == leftGaze
          ? _value.leftGaze
          : leftGaze // ignore: cast_nullable_to_non_nullable
              as Point,
      rightGaze: null == rightGaze
          ? _value.rightGaze
          : rightGaze // ignore: cast_nullable_to_non_nullable
              as Point,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get leftGaze {
    return $PointCopyWith<$Res>(_value.leftGaze, (value) {
      return _then(_value.copyWith(leftGaze: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PointCopyWith<$Res> get rightGaze {
    return $PointCopyWith<$Res>(_value.rightGaze, (value) {
      return _then(_value.copyWith(rightGaze: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BinocularGazeCopyWith<$Res>
    implements $BinocularGazeCopyWith<$Res> {
  factory _$$_BinocularGazeCopyWith(
          _$_BinocularGaze value, $Res Function(_$_BinocularGaze) then) =
      __$$_BinocularGazeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Point leftGaze, Point rightGaze});

  @override
  $PointCopyWith<$Res> get leftGaze;
  @override
  $PointCopyWith<$Res> get rightGaze;
}

/// @nodoc
class __$$_BinocularGazeCopyWithImpl<$Res>
    extends _$BinocularGazeCopyWithImpl<$Res, _$_BinocularGaze>
    implements _$$_BinocularGazeCopyWith<$Res> {
  __$$_BinocularGazeCopyWithImpl(
      _$_BinocularGaze _value, $Res Function(_$_BinocularGaze) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftGaze = null,
    Object? rightGaze = null,
  }) {
    return _then(_$_BinocularGaze(
      leftGaze: null == leftGaze
          ? _value.leftGaze
          : leftGaze // ignore: cast_nullable_to_non_nullable
              as Point,
      rightGaze: null == rightGaze
          ? _value.rightGaze
          : rightGaze // ignore: cast_nullable_to_non_nullable
              as Point,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BinocularGaze extends _BinocularGaze {
  const _$_BinocularGaze(
      {this.leftGaze = const Point(), this.rightGaze = const Point()})
      : super._();

  factory _$_BinocularGaze.fromJson(Map<String, dynamic> json) =>
      _$$_BinocularGazeFromJson(json);

  @override
  @JsonKey()
  final Point leftGaze;
  @override
  @JsonKey()
  final Point rightGaze;

  @override
  String toString() {
    return 'BinocularGaze(leftGaze: $leftGaze, rightGaze: $rightGaze)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BinocularGaze &&
            (identical(other.leftGaze, leftGaze) ||
                other.leftGaze == leftGaze) &&
            (identical(other.rightGaze, rightGaze) ||
                other.rightGaze == rightGaze));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, leftGaze, rightGaze);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BinocularGazeCopyWith<_$_BinocularGaze> get copyWith =>
      __$$_BinocularGazeCopyWithImpl<_$_BinocularGaze>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BinocularGazeToJson(
      this,
    );
  }
}

abstract class _BinocularGaze extends BinocularGaze {
  const factory _BinocularGaze({final Point leftGaze, final Point rightGaze}) =
      _$_BinocularGaze;
  const _BinocularGaze._() : super._();

  factory _BinocularGaze.fromJson(Map<String, dynamic> json) =
      _$_BinocularGaze.fromJson;

  @override
  Point get leftGaze;
  @override
  Point get rightGaze;
  @override
  @JsonKey(ignore: true)
  _$$_BinocularGazeCopyWith<_$_BinocularGaze> get copyWith =>
      throw _privateConstructorUsedError;
}
