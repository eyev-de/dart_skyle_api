// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$PositioningQualityCopyWithImpl<$Res>;
  $Res call({int horizontal, int vertical, int depth});
}

/// @nodoc
class _$PositioningQualityCopyWithImpl<$Res>
    implements $PositioningQualityCopyWith<$Res> {
  _$PositioningQualityCopyWithImpl(this._value, this._then);

  final PositioningQuality _value;
  // ignore: unused_field
  final $Res Function(PositioningQuality) _then;

  @override
  $Res call({
    Object? horizontal = freezed,
    Object? vertical = freezed,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      horizontal: horizontal == freezed
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as int,
      vertical: vertical == freezed
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as int,
      depth: depth == freezed
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PositioningQualityCopyWith<$Res>
    implements $PositioningQualityCopyWith<$Res> {
  factory _$$_PositioningQualityCopyWith(_$_PositioningQuality value,
          $Res Function(_$_PositioningQuality) then) =
      __$$_PositioningQualityCopyWithImpl<$Res>;
  @override
  $Res call({int horizontal, int vertical, int depth});
}

/// @nodoc
class __$$_PositioningQualityCopyWithImpl<$Res>
    extends _$PositioningQualityCopyWithImpl<$Res>
    implements _$$_PositioningQualityCopyWith<$Res> {
  __$$_PositioningQualityCopyWithImpl(
      _$_PositioningQuality _value, $Res Function(_$_PositioningQuality) _then)
      : super(_value, (v) => _then(v as _$_PositioningQuality));

  @override
  _$_PositioningQuality get _value => super._value as _$_PositioningQuality;

  @override
  $Res call({
    Object? horizontal = freezed,
    Object? vertical = freezed,
    Object? depth = freezed,
  }) {
    return _then(_$_PositioningQuality(
      horizontal: horizontal == freezed
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as int,
      vertical: vertical == freezed
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as int,
      depth: depth == freezed
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
            const DeepCollectionEquality()
                .equals(other.horizontal, horizontal) &&
            const DeepCollectionEquality().equals(other.vertical, vertical) &&
            const DeepCollectionEquality().equals(other.depth, depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(horizontal),
      const DeepCollectionEquality().hash(vertical),
      const DeepCollectionEquality().hash(depth));

  @JsonKey(ignore: true)
  @override
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
