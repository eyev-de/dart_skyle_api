// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screen_sizes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$ScreenSizesCopyWithImpl<$Res, ScreenSizes>;
  @useResult
  $Res call({Size resolution, Size? dimensions});

  $SizeCopyWith<$Res> get resolution;
  $SizeCopyWith<$Res>? get dimensions;
}

/// @nodoc
class _$ScreenSizesCopyWithImpl<$Res, $Val extends ScreenSizes>
    implements $ScreenSizesCopyWith<$Res> {
  _$ScreenSizesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? dimensions = freezed,
  }) {
    return _then(_value.copyWith(
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as Size,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Size?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SizeCopyWith<$Res> get resolution {
    return $SizeCopyWith<$Res>(_value.resolution, (value) {
      return _then(_value.copyWith(resolution: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SizeCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $SizeCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScreenSizesImplCopyWith<$Res>
    implements $ScreenSizesCopyWith<$Res> {
  factory _$$ScreenSizesImplCopyWith(
          _$ScreenSizesImpl value, $Res Function(_$ScreenSizesImpl) then) =
      __$$ScreenSizesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Size resolution, Size? dimensions});

  @override
  $SizeCopyWith<$Res> get resolution;
  @override
  $SizeCopyWith<$Res>? get dimensions;
}

/// @nodoc
class __$$ScreenSizesImplCopyWithImpl<$Res>
    extends _$ScreenSizesCopyWithImpl<$Res, _$ScreenSizesImpl>
    implements _$$ScreenSizesImplCopyWith<$Res> {
  __$$ScreenSizesImplCopyWithImpl(
      _$ScreenSizesImpl _value, $Res Function(_$ScreenSizesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolution = null,
    Object? dimensions = freezed,
  }) {
    return _then(_$ScreenSizesImpl(
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as Size,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Size?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenSizesImpl implements _ScreenSizes {
  const _$ScreenSizesImpl(
      {this.resolution = const Size(width: 1920, height: 1080),
      this.dimensions});

  factory _$ScreenSizesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenSizesImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenSizesImpl &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resolution, dimensions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenSizesImplCopyWith<_$ScreenSizesImpl> get copyWith =>
      __$$ScreenSizesImplCopyWithImpl<_$ScreenSizesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenSizesImplToJson(
      this,
    );
  }
}

abstract class _ScreenSizes implements ScreenSizes {
  const factory _ScreenSizes({final Size resolution, final Size? dimensions}) =
      _$ScreenSizesImpl;

  factory _ScreenSizes.fromJson(Map<String, dynamic> json) =
      _$ScreenSizesImpl.fromJson;

  @override
  Size get resolution;
  @override
  Size? get dimensions;
  @override
  @JsonKey(ignore: true)
  _$$ScreenSizesImplCopyWith<_$ScreenSizesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
