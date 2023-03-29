// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positioning_quality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositioningQuality _$PositioningQualityFromJson(Map<String, dynamic> json) {
  return _PositioningQuality.fromJson(json);
}

/// @nodoc
mixin _$PositioningQuality {
  int get horizontal => throw _privateConstructorUsedError;
  int get vertical => throw _privateConstructorUsedError;
  int get depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositioningQualityCopyWith<PositioningQuality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositioningQualityCopyWith<$Res> {
  factory $PositioningQualityCopyWith(
          PositioningQuality value, $Res Function(PositioningQuality) then) =
      _$PositioningQualityCopyWithImpl<$Res, PositioningQuality>;
  @useResult
  $Res call({int horizontal, int vertical, int depth});
}

/// @nodoc
class _$PositioningQualityCopyWithImpl<$Res, $Val extends PositioningQuality>
    implements $PositioningQualityCopyWith<$Res> {
  _$PositioningQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
    Object? depth = null,
  }) {
    return _then(_value.copyWith(
      horizontal: null == horizontal
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as int,
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositioningQualityCopyWith<$Res>
    implements $PositioningQualityCopyWith<$Res> {
  factory _$$_PositioningQualityCopyWith(_$_PositioningQuality value,
          $Res Function(_$_PositioningQuality) then) =
      __$$_PositioningQualityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int horizontal, int vertical, int depth});
}

/// @nodoc
class __$$_PositioningQualityCopyWithImpl<$Res>
    extends _$PositioningQualityCopyWithImpl<$Res, _$_PositioningQuality>
    implements _$$_PositioningQualityCopyWith<$Res> {
  __$$_PositioningQualityCopyWithImpl(
      _$_PositioningQuality _value, $Res Function(_$_PositioningQuality) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
    Object? depth = null,
  }) {
    return _then(_$_PositioningQuality(
      horizontal: null == horizontal
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as int,
      vertical: null == vertical
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as int,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositioningQuality implements _PositioningQuality {
  const _$_PositioningQuality(
      {this.horizontal = 0, this.vertical = 0, this.depth = 0});

  factory _$_PositioningQuality.fromJson(Map<String, dynamic> json) =>
      _$$_PositioningQualityFromJson(json);

  @override
  @JsonKey()
  final int horizontal;
  @override
  @JsonKey()
  final int vertical;
  @override
  @JsonKey()
  final int depth;

  @override
  String toString() {
    return 'PositioningQuality(horizontal: $horizontal, vertical: $vertical, depth: $depth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositioningQuality &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal) &&
            (identical(other.vertical, vertical) ||
                other.vertical == vertical) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, horizontal, vertical, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositioningQualityCopyWith<_$_PositioningQuality> get copyWith =>
      __$$_PositioningQualityCopyWithImpl<_$_PositioningQuality>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositioningQualityToJson(
      this,
    );
  }
}

abstract class _PositioningQuality implements PositioningQuality {
  const factory _PositioningQuality(
      {final int horizontal,
      final int vertical,
      final int depth}) = _$_PositioningQuality;

  factory _PositioningQuality.fromJson(Map<String, dynamic> json) =
      _$_PositioningQuality.fromJson;

  @override
  int get horizontal;
  @override
  int get vertical;
  @override
  int get depth;
  @override
  @JsonKey(ignore: true)
  _$$_PositioningQualityCopyWith<_$_PositioningQuality> get copyWith =>
      throw _privateConstructorUsedError;
}
