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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$PositioningQualityImplCopyWith<$Res>
    implements $PositioningQualityCopyWith<$Res> {
  factory _$$PositioningQualityImplCopyWith(_$PositioningQualityImpl value,
          $Res Function(_$PositioningQualityImpl) then) =
      __$$PositioningQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int horizontal, int vertical, int depth});
}

/// @nodoc
class __$$PositioningQualityImplCopyWithImpl<$Res>
    extends _$PositioningQualityCopyWithImpl<$Res, _$PositioningQualityImpl>
    implements _$$PositioningQualityImplCopyWith<$Res> {
  __$$PositioningQualityImplCopyWithImpl(_$PositioningQualityImpl _value,
      $Res Function(_$PositioningQualityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? horizontal = null,
    Object? vertical = null,
    Object? depth = null,
  }) {
    return _then(_$PositioningQualityImpl(
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
class _$PositioningQualityImpl implements _PositioningQuality {
  const _$PositioningQualityImpl(
      {this.horizontal = 0, this.vertical = 0, this.depth = 0});

  factory _$PositioningQualityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositioningQualityImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositioningQualityImpl &&
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
  _$$PositioningQualityImplCopyWith<_$PositioningQualityImpl> get copyWith =>
      __$$PositioningQualityImplCopyWithImpl<_$PositioningQualityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositioningQualityImplToJson(
      this,
    );
  }
}

abstract class _PositioningQuality implements PositioningQuality {
  const factory _PositioningQuality(
      {final int horizontal,
      final int vertical,
      final int depth}) = _$PositioningQualityImpl;

  factory _PositioningQuality.fromJson(Map<String, dynamic> json) =
      _$PositioningQualityImpl.fromJson;

  @override
  int get horizontal;
  @override
  int get vertical;
  @override
  int get depth;
  @override
  @JsonKey(ignore: true)
  _$$PositioningQualityImplCopyWith<_$PositioningQualityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
