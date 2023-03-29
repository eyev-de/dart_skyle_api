// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$RawImageCopyWithImpl<$Res, RawImage>;
  @useResult
  $Res call({int width, int height, List<int> data});
}

/// @nodoc
class _$RawImageCopyWithImpl<$Res, $Val extends RawImage>
    implements $RawImageCopyWith<$Res> {
  _$RawImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RawImageCopyWith<$Res> implements $RawImageCopyWith<$Res> {
  factory _$$_RawImageCopyWith(
          _$_RawImage value, $Res Function(_$_RawImage) then) =
      __$$_RawImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, List<int> data});
}

/// @nodoc
class __$$_RawImageCopyWithImpl<$Res>
    extends _$RawImageCopyWithImpl<$Res, _$_RawImage>
    implements _$$_RawImageCopyWith<$Res> {
  __$$_RawImageCopyWithImpl(
      _$_RawImage _value, $Res Function(_$_RawImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? data = null,
  }) {
    return _then(_$_RawImage(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
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
    if (_data is EqualUnmodifiableListView) return _data;
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
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, width, height, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
