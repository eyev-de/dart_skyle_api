// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen_sizes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScreenSizes _$ScreenSizesFromJson(Map<String, dynamic> json) {
  return _ScreenSizes.fromJson(json);
}

/// @nodoc
mixin _$ScreenSizes {
  Size get resolution => throw _privateConstructorUsedError;
  Size? get dimensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreenSizesCopyWith<ScreenSizes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenSizesCopyWith<$Res> {
  factory $ScreenSizesCopyWith(
          ScreenSizes value, $Res Function(ScreenSizes) then) =
      _$ScreenSizesCopyWithImpl<$Res>;
  $Res call({Size resolution, Size? dimensions});

  $SizeCopyWith<$Res> get resolution;
  $SizeCopyWith<$Res>? get dimensions;
}

/// @nodoc
class _$ScreenSizesCopyWithImpl<$Res> implements $ScreenSizesCopyWith<$Res> {
  _$ScreenSizesCopyWithImpl(this._value, this._then);

  final ScreenSizes _value;
  // ignore: unused_field
  final $Res Function(ScreenSizes) _then;

  @override
  $Res call({
    Object? resolution = freezed,
    Object? dimensions = freezed,
  }) {
    return _then(_value.copyWith(
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as Size,
      dimensions: dimensions == freezed
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Size?,
    ));
  }

  @override
  $SizeCopyWith<$Res> get resolution {
    return $SizeCopyWith<$Res>(_value.resolution, (value) {
      return _then(_value.copyWith(resolution: value));
    });
  }

  @override
  $SizeCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $SizeCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value));
    });
  }
}

/// @nodoc
abstract class _$$_ScreenSizesCopyWith<$Res>
    implements $ScreenSizesCopyWith<$Res> {
  factory _$$_ScreenSizesCopyWith(
          _$_ScreenSizes value, $Res Function(_$_ScreenSizes) then) =
      __$$_ScreenSizesCopyWithImpl<$Res>;
  @override
  $Res call({Size resolution, Size? dimensions});

  @override
  $SizeCopyWith<$Res> get resolution;
  @override
  $SizeCopyWith<$Res>? get dimensions;
}

/// @nodoc
class __$$_ScreenSizesCopyWithImpl<$Res> extends _$ScreenSizesCopyWithImpl<$Res>
    implements _$$_ScreenSizesCopyWith<$Res> {
  __$$_ScreenSizesCopyWithImpl(
      _$_ScreenSizes _value, $Res Function(_$_ScreenSizes) _then)
      : super(_value, (v) => _then(v as _$_ScreenSizes));

  @override
  _$_ScreenSizes get _value => super._value as _$_ScreenSizes;

  @override
  $Res call({
    Object? resolution = freezed,
    Object? dimensions = freezed,
  }) {
    return _then(_$_ScreenSizes(
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as Size,
      dimensions: dimensions == freezed
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Size?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScreenSizes implements _ScreenSizes {
  const _$_ScreenSizes(
      {this.resolution = const Size(width: 1920, height: 1080),
      this.dimensions});

  factory _$_ScreenSizes.fromJson(Map<String, dynamic> json) =>
      _$$_ScreenSizesFromJson(json);

  @override
  @JsonKey()
  final Size resolution;
  @override
  final Size? dimensions;

  @override
  String toString() {
    return 'ScreenSizes(resolution: $resolution, dimensions: $dimensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScreenSizes &&
            const DeepCollectionEquality()
                .equals(other.resolution, resolution) &&
            const DeepCollectionEquality()
                .equals(other.dimensions, dimensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resolution),
      const DeepCollectionEquality().hash(dimensions));

  @JsonKey(ignore: true)
  @override
  _$$_ScreenSizesCopyWith<_$_ScreenSizes> get copyWith =>
      __$$_ScreenSizesCopyWithImpl<_$_ScreenSizes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScreenSizesToJson(
      this,
    );
  }
}

abstract class _ScreenSizes implements ScreenSizes {
  const factory _ScreenSizes({final Size resolution, final Size? dimensions}) =
      _$_ScreenSizes;

  factory _ScreenSizes.fromJson(Map<String, dynamic> json) =
      _$_ScreenSizes.fromJson;

  @override
  Size get resolution;
  @override
  Size? get dimensions;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenSizesCopyWith<_$_ScreenSizes> get copyWith =>
      throw _privateConstructorUsedError;
}
