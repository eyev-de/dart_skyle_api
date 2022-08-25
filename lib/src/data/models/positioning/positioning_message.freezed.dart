// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'positioning_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositioningMessage _$PositioningMessageFromJson(Map<String, dynamic> json) {
  return _PositioningMessage.fromJson(json);
}

/// @nodoc
mixin _$PositioningMessage {
  PositioningEyes get eyes => throw _privateConstructorUsedError;
  PositioningQuality get quality => throw _privateConstructorUsedError;
  PositioningDistance get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositioningMessageCopyWith<PositioningMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositioningMessageCopyWith<$Res> {
  factory $PositioningMessageCopyWith(
          PositioningMessage value, $Res Function(PositioningMessage) then) =
      _$PositioningMessageCopyWithImpl<$Res>;
  $Res call(
      {PositioningEyes eyes,
      PositioningQuality quality,
      PositioningDistance distance});

  $PositioningEyesCopyWith<$Res> get eyes;
  $PositioningQualityCopyWith<$Res> get quality;
}

/// @nodoc
class _$PositioningMessageCopyWithImpl<$Res>
    implements $PositioningMessageCopyWith<$Res> {
  _$PositioningMessageCopyWithImpl(this._value, this._then);

  final PositioningMessage _value;
  // ignore: unused_field
  final $Res Function(PositioningMessage) _then;

  @override
  $Res call({
    Object? eyes = freezed,
    Object? quality = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      eyes: eyes == freezed
          ? _value.eyes
          : eyes // ignore: cast_nullable_to_non_nullable
              as PositioningEyes,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as PositioningQuality,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as PositioningDistance,
    ));
  }

  @override
  $PositioningEyesCopyWith<$Res> get eyes {
    return $PositioningEyesCopyWith<$Res>(_value.eyes, (value) {
      return _then(_value.copyWith(eyes: value));
    });
  }

  @override
  $PositioningQualityCopyWith<$Res> get quality {
    return $PositioningQualityCopyWith<$Res>(_value.quality, (value) {
      return _then(_value.copyWith(quality: value));
    });
  }
}

/// @nodoc
abstract class _$$_PositioningMessageCopyWith<$Res>
    implements $PositioningMessageCopyWith<$Res> {
  factory _$$_PositioningMessageCopyWith(_$_PositioningMessage value,
          $Res Function(_$_PositioningMessage) then) =
      __$$_PositioningMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {PositioningEyes eyes,
      PositioningQuality quality,
      PositioningDistance distance});

  @override
  $PositioningEyesCopyWith<$Res> get eyes;
  @override
  $PositioningQualityCopyWith<$Res> get quality;
}

/// @nodoc
class __$$_PositioningMessageCopyWithImpl<$Res>
    extends _$PositioningMessageCopyWithImpl<$Res>
    implements _$$_PositioningMessageCopyWith<$Res> {
  __$$_PositioningMessageCopyWithImpl(
      _$_PositioningMessage _value, $Res Function(_$_PositioningMessage) _then)
      : super(_value, (v) => _then(v as _$_PositioningMessage));

  @override
  _$_PositioningMessage get _value => super._value as _$_PositioningMessage;

  @override
  $Res call({
    Object? eyes = freezed,
    Object? quality = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$_PositioningMessage(
      eyes: eyes == freezed
          ? _value.eyes
          : eyes // ignore: cast_nullable_to_non_nullable
              as PositioningEyes,
      quality: quality == freezed
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as PositioningQuality,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as PositioningDistance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositioningMessage implements _PositioningMessage {
  const _$_PositioningMessage(
      {this.eyes = const PositioningEyes(),
      this.quality = const PositioningQuality(),
      this.distance = PositioningDistance.none});

  factory _$_PositioningMessage.fromJson(Map<String, dynamic> json) =>
      _$$_PositioningMessageFromJson(json);

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
  String toString() {
    return 'PositioningMessage(eyes: $eyes, quality: $quality, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositioningMessage &&
            const DeepCollectionEquality().equals(other.eyes, eyes) &&
            const DeepCollectionEquality().equals(other.quality, quality) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eyes),
      const DeepCollectionEquality().hash(quality),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$$_PositioningMessageCopyWith<_$_PositioningMessage> get copyWith =>
      __$$_PositioningMessageCopyWithImpl<_$_PositioningMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositioningMessageToJson(
      this,
    );
  }
}

abstract class _PositioningMessage implements PositioningMessage {
  const factory _PositioningMessage(
      {final PositioningEyes eyes,
      final PositioningQuality quality,
      final PositioningDistance distance}) = _$_PositioningMessage;

  factory _PositioningMessage.fromJson(Map<String, dynamic> json) =
      _$_PositioningMessage.fromJson;

  @override
  PositioningEyes get eyes;
  @override
  PositioningQuality get quality;
  @override
  PositioningDistance get distance;
  @override
  @JsonKey(ignore: true)
  _$$_PositioningMessageCopyWith<_$_PositioningMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
