// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positioning_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PositioningMessage _$PositioningMessageFromJson(Map<String, dynamic> json) {
  return _PositioningMessage.fromJson(json);
}

/// @nodoc
mixin _$PositioningMessage {
  PositioningEyes get eyes => throw _privateConstructorUsedError;
  PositioningQuality get quality => throw _privateConstructorUsedError;
  PositioningDistance get distance => throw _privateConstructorUsedError;
  Face? get face => throw _privateConstructorUsedError;

  /// Serializes this PositioningMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositioningMessageCopyWith<PositioningMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositioningMessageCopyWith<$Res> {
  factory $PositioningMessageCopyWith(
          PositioningMessage value, $Res Function(PositioningMessage) then) =
      _$PositioningMessageCopyWithImpl<$Res, PositioningMessage>;
  @useResult
  $Res call(
      {PositioningEyes eyes,
      PositioningQuality quality,
      PositioningDistance distance,
      Face? face});

  $PositioningEyesCopyWith<$Res> get eyes;
  $PositioningQualityCopyWith<$Res> get quality;
  $FaceCopyWith<$Res>? get face;
}

/// @nodoc
class _$PositioningMessageCopyWithImpl<$Res, $Val extends PositioningMessage>
    implements $PositioningMessageCopyWith<$Res> {
  _$PositioningMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eyes = null,
    Object? quality = null,
    Object? distance = null,
    Object? face = freezed,
  }) {
    return _then(_value.copyWith(
      eyes: null == eyes
          ? _value.eyes
          : eyes // ignore: cast_nullable_to_non_nullable
              as PositioningEyes,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as PositioningQuality,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as PositioningDistance,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Face?,
    ) as $Val);
  }

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositioningEyesCopyWith<$Res> get eyes {
    return $PositioningEyesCopyWith<$Res>(_value.eyes, (value) {
      return _then(_value.copyWith(eyes: value) as $Val);
    });
  }

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositioningQualityCopyWith<$Res> get quality {
    return $PositioningQualityCopyWith<$Res>(_value.quality, (value) {
      return _then(_value.copyWith(quality: value) as $Val);
    });
  }

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FaceCopyWith<$Res>? get face {
    if (_value.face == null) {
      return null;
    }

    return $FaceCopyWith<$Res>(_value.face!, (value) {
      return _then(_value.copyWith(face: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PositioningMessageImplCopyWith<$Res>
    implements $PositioningMessageCopyWith<$Res> {
  factory _$$PositioningMessageImplCopyWith(_$PositioningMessageImpl value,
          $Res Function(_$PositioningMessageImpl) then) =
      __$$PositioningMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PositioningEyes eyes,
      PositioningQuality quality,
      PositioningDistance distance,
      Face? face});

  @override
  $PositioningEyesCopyWith<$Res> get eyes;
  @override
  $PositioningQualityCopyWith<$Res> get quality;
  @override
  $FaceCopyWith<$Res>? get face;
}

/// @nodoc
class __$$PositioningMessageImplCopyWithImpl<$Res>
    extends _$PositioningMessageCopyWithImpl<$Res, _$PositioningMessageImpl>
    implements _$$PositioningMessageImplCopyWith<$Res> {
  __$$PositioningMessageImplCopyWithImpl(_$PositioningMessageImpl _value,
      $Res Function(_$PositioningMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eyes = null,
    Object? quality = null,
    Object? distance = null,
    Object? face = freezed,
  }) {
    return _then(_$PositioningMessageImpl(
      eyes: null == eyes
          ? _value.eyes
          : eyes // ignore: cast_nullable_to_non_nullable
              as PositioningEyes,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as PositioningQuality,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as PositioningDistance,
      face: freezed == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Face?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositioningMessageImpl implements _PositioningMessage {
  const _$PositioningMessageImpl(
      {this.eyes = const PositioningEyes(),
      this.quality = const PositioningQuality(),
      this.distance = PositioningDistance.none,
      this.face});

  factory _$PositioningMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositioningMessageImplFromJson(json);

  @override
  @JsonKey()
  final PositioningEyes eyes;
  @override
  @JsonKey()
  final PositioningQuality quality;
  @override
  @JsonKey()
  final PositioningDistance distance;
  @override
  final Face? face;

  @override
  String toString() {
    return 'PositioningMessage(eyes: $eyes, quality: $quality, distance: $distance, face: $face)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositioningMessageImpl &&
            (identical(other.eyes, eyes) || other.eyes == eyes) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.face, face) || other.face == face));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eyes, quality, distance, face);

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositioningMessageImplCopyWith<_$PositioningMessageImpl> get copyWith =>
      __$$PositioningMessageImplCopyWithImpl<_$PositioningMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositioningMessageImplToJson(
      this,
    );
  }
}

abstract class _PositioningMessage implements PositioningMessage {
  const factory _PositioningMessage(
      {final PositioningEyes eyes,
      final PositioningQuality quality,
      final PositioningDistance distance,
      final Face? face}) = _$PositioningMessageImpl;

  factory _PositioningMessage.fromJson(Map<String, dynamic> json) =
      _$PositioningMessageImpl.fromJson;

  @override
  PositioningEyes get eyes;
  @override
  PositioningQuality get quality;
  @override
  PositioningDistance get distance;
  @override
  Face? get face;

  /// Create a copy of PositioningMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositioningMessageImplCopyWith<_$PositioningMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
