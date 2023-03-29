// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'versions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Versions _$VersionsFromJson(Map<String, dynamic> json) {
  return _Versions.fromJson(json);
}

/// @nodoc
mixin _$Versions {
  String get firmware => throw _privateConstructorUsedError;
  String get eyetracker => throw _privateConstructorUsedError;
  String get calib => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  BigInt get serial => throw _privateConstructorUsedError;
  int get skyleType => throw _privateConstructorUsedError;
  bool get isDemo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionsCopyWith<Versions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionsCopyWith<$Res> {
  factory $VersionsCopyWith(Versions value, $Res Function(Versions) then) =
      _$VersionsCopyWithImpl<$Res, Versions>;
  @useResult
  $Res call(
      {String firmware,
      String eyetracker,
      String calib,
      String base,
      BigInt serial,
      int skyleType,
      bool isDemo});
}

/// @nodoc
class _$VersionsCopyWithImpl<$Res, $Val extends Versions>
    implements $VersionsCopyWith<$Res> {
  _$VersionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firmware = null,
    Object? eyetracker = null,
    Object? calib = null,
    Object? base = null,
    Object? serial = null,
    Object? skyleType = null,
    Object? isDemo = null,
  }) {
    return _then(_value.copyWith(
      firmware: null == firmware
          ? _value.firmware
          : firmware // ignore: cast_nullable_to_non_nullable
              as String,
      eyetracker: null == eyetracker
          ? _value.eyetracker
          : eyetracker // ignore: cast_nullable_to_non_nullable
              as String,
      calib: null == calib
          ? _value.calib
          : calib // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as BigInt,
      skyleType: null == skyleType
          ? _value.skyleType
          : skyleType // ignore: cast_nullable_to_non_nullable
              as int,
      isDemo: null == isDemo
          ? _value.isDemo
          : isDemo // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersionsCopyWith<$Res> implements $VersionsCopyWith<$Res> {
  factory _$$_VersionsCopyWith(
          _$_Versions value, $Res Function(_$_Versions) then) =
      __$$_VersionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firmware,
      String eyetracker,
      String calib,
      String base,
      BigInt serial,
      int skyleType,
      bool isDemo});
}

/// @nodoc
class __$$_VersionsCopyWithImpl<$Res>
    extends _$VersionsCopyWithImpl<$Res, _$_Versions>
    implements _$$_VersionsCopyWith<$Res> {
  __$$_VersionsCopyWithImpl(
      _$_Versions _value, $Res Function(_$_Versions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firmware = null,
    Object? eyetracker = null,
    Object? calib = null,
    Object? base = null,
    Object? serial = null,
    Object? skyleType = null,
    Object? isDemo = null,
  }) {
    return _then(_$_Versions(
      firmware: null == firmware
          ? _value.firmware
          : firmware // ignore: cast_nullable_to_non_nullable
              as String,
      eyetracker: null == eyetracker
          ? _value.eyetracker
          : eyetracker // ignore: cast_nullable_to_non_nullable
              as String,
      calib: null == calib
          ? _value.calib
          : calib // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      serial: null == serial
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as BigInt,
      skyleType: null == skyleType
          ? _value.skyleType
          : skyleType // ignore: cast_nullable_to_non_nullable
              as int,
      isDemo: null == isDemo
          ? _value.isDemo
          : isDemo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Versions implements _Versions {
  const _$_Versions(
      {required this.firmware,
      required this.eyetracker,
      required this.calib,
      required this.base,
      required this.serial,
      required this.skyleType,
      required this.isDemo});

  factory _$_Versions.fromJson(Map<String, dynamic> json) =>
      _$$_VersionsFromJson(json);

  @override
  final String firmware;
  @override
  final String eyetracker;
  @override
  final String calib;
  @override
  final String base;
  @override
  final BigInt serial;
  @override
  final int skyleType;
  @override
  final bool isDemo;

  @override
  String toString() {
    return 'Versions(firmware: $firmware, eyetracker: $eyetracker, calib: $calib, base: $base, serial: $serial, skyleType: $skyleType, isDemo: $isDemo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Versions &&
            (identical(other.firmware, firmware) ||
                other.firmware == firmware) &&
            (identical(other.eyetracker, eyetracker) ||
                other.eyetracker == eyetracker) &&
            (identical(other.calib, calib) || other.calib == calib) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.serial, serial) || other.serial == serial) &&
            (identical(other.skyleType, skyleType) ||
                other.skyleType == skyleType) &&
            (identical(other.isDemo, isDemo) || other.isDemo == isDemo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firmware, eyetracker, calib,
      base, serial, skyleType, isDemo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      __$$_VersionsCopyWithImpl<_$_Versions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionsToJson(
      this,
    );
  }
}

abstract class _Versions implements Versions {
  const factory _Versions(
      {required final String firmware,
      required final String eyetracker,
      required final String calib,
      required final String base,
      required final BigInt serial,
      required final int skyleType,
      required final bool isDemo}) = _$_Versions;

  factory _Versions.fromJson(Map<String, dynamic> json) = _$_Versions.fromJson;

  @override
  String get firmware;
  @override
  String get eyetracker;
  @override
  String get calib;
  @override
  String get base;
  @override
  BigInt get serial;
  @override
  int get skyleType;
  @override
  bool get isDemo;
  @override
  @JsonKey(ignore: true)
  _$$_VersionsCopyWith<_$_Versions> get copyWith =>
      throw _privateConstructorUsedError;
}
