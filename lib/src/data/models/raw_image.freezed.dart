// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'raw_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RawImage _$RawImageFromJson(Map<String, dynamic> json) {
  return _RawImage.fromJson(json);
}

/// @nodoc
mixin _$RawImage {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<int> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RawImageCopyWith<RawImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawImageCopyWith<$Res> {
  factory $RawImageCopyWith(RawImage value, $Res Function(RawImage) then) =
      _$RawImageCopyWithImpl<$Res>;
  $Res call({int width, int height, List<int> data});
}

/// @nodoc
class _$RawImageCopyWithImpl<$Res> implements $RawImageCopyWith<$Res> {
  _$RawImageCopyWithImpl(this._value, this._then);

  final RawImage _value;
  // ignore: unused_field
  final $Res Function(RawImage) _then;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_RawImageCopyWith<$Res> implements $RawImageCopyWith<$Res> {
  factory _$$_RawImageCopyWith(
          _$_RawImage value, $Res Function(_$_RawImage) then) =
      __$$_RawImageCopyWithImpl<$Res>;
  @override
  $Res call({int width, int height, List<int> data});
}

/// @nodoc
class __$$_RawImageCopyWithImpl<$Res> extends _$RawImageCopyWithImpl<$Res>
    implements _$$_RawImageCopyWith<$Res> {
  __$$_RawImageCopyWithImpl(
      _$_RawImage _value, $Res Function(_$_RawImage) _then)
      : super(_value, (v) => _then(v as _$_RawImage));

  @override
  _$_RawImage get _value => super._value as _$_RawImage;

  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_RawImage(
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RawImage extends _RawImage {
  const _$_RawImage(
      {this.width = 0, this.height = 0, final List<int> data = const []})
      : _data = data,
        super._();

  factory _$_RawImage.fromJson(Map<String, dynamic> json) =>
      _$$_RawImageFromJson(json);

  @override
  @JsonKey()
  final int width;
  @override
  @JsonKey()
  final int height;
  final List<int> _data;
  @override
  @JsonKey()
  List<int> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RawImage(width: $width, height: $height, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RawImage &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_RawImageCopyWith<_$_RawImage> get copyWith =>
      __$$_RawImageCopyWithImpl<_$_RawImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RawImageToJson(
      this,
    );
  }
}

abstract class _RawImage extends RawImage {
  const factory _RawImage(
      {final int width, final int height, final List<int> data}) = _$_RawImage;
  const _RawImage._() : super._();

  factory _RawImage.fromJson(Map<String, dynamic> json) = _$_RawImage.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  List<int> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RawImageCopyWith<_$_RawImage> get copyWith =>
      throw _privateConstructorUsedError;
}
