// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ipados.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPadOS _$IPadOSFromJson(Map<String, dynamic> json) {
  return _IPadOS.fromJson(json);
}

/// @nodoc
mixin _$IPadOS {
  bool? get isOld => throw _privateConstructorUsedError;
  bool? get isNotZoomed => throw _privateConstructorUsedError;
  IPadModel? get iPadModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPadOSCopyWith<IPadOS> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPadOSCopyWith<$Res> {
  factory $IPadOSCopyWith(IPadOS value, $Res Function(IPadOS) then) =
      _$IPadOSCopyWithImpl<$Res, IPadOS>;
  @useResult
  $Res call({bool? isOld, bool? isNotZoomed, IPadModel? iPadModel});
}

/// @nodoc
class _$IPadOSCopyWithImpl<$Res, $Val extends IPadOS>
    implements $IPadOSCopyWith<$Res> {
  _$IPadOSCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOld = freezed,
    Object? isNotZoomed = freezed,
    Object? iPadModel = freezed,
  }) {
    return _then(_value.copyWith(
      isOld: freezed == isOld
          ? _value.isOld
          : isOld // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNotZoomed: freezed == isNotZoomed
          ? _value.isNotZoomed
          : isNotZoomed // ignore: cast_nullable_to_non_nullable
              as bool?,
      iPadModel: freezed == iPadModel
          ? _value.iPadModel
          : iPadModel // ignore: cast_nullable_to_non_nullable
              as IPadModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IPadOSCopyWith<$Res> implements $IPadOSCopyWith<$Res> {
  factory _$$_IPadOSCopyWith(_$_IPadOS value, $Res Function(_$_IPadOS) then) =
      __$$_IPadOSCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isOld, bool? isNotZoomed, IPadModel? iPadModel});
}

/// @nodoc
class __$$_IPadOSCopyWithImpl<$Res>
    extends _$IPadOSCopyWithImpl<$Res, _$_IPadOS>
    implements _$$_IPadOSCopyWith<$Res> {
  __$$_IPadOSCopyWithImpl(_$_IPadOS _value, $Res Function(_$_IPadOS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOld = freezed,
    Object? isNotZoomed = freezed,
    Object? iPadModel = freezed,
  }) {
    return _then(_$_IPadOS(
      isOld: freezed == isOld
          ? _value.isOld
          : isOld // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNotZoomed: freezed == isNotZoomed
          ? _value.isNotZoomed
          : isNotZoomed // ignore: cast_nullable_to_non_nullable
              as bool?,
      iPadModel: freezed == iPadModel
          ? _value.iPadModel
          : iPadModel // ignore: cast_nullable_to_non_nullable
              as IPadModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IPadOS implements _IPadOS {
  const _$_IPadOS(
      {this.isOld = false,
      this.isNotZoomed = false,
      this.iPadModel = IPadModel.iPad13_10});

  factory _$_IPadOS.fromJson(Map<String, dynamic> json) =>
      _$$_IPadOSFromJson(json);

  @override
  @JsonKey()
  final bool? isOld;
  @override
  @JsonKey()
  final bool? isNotZoomed;
  @override
  @JsonKey()
  final IPadModel? iPadModel;

  @override
  String toString() {
    return 'IPadOS(isOld: $isOld, isNotZoomed: $isNotZoomed, iPadModel: $iPadModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPadOS &&
            (identical(other.isOld, isOld) || other.isOld == isOld) &&
            (identical(other.isNotZoomed, isNotZoomed) ||
                other.isNotZoomed == isNotZoomed) &&
            (identical(other.iPadModel, iPadModel) ||
                other.iPadModel == iPadModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isOld, isNotZoomed, iPadModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IPadOSCopyWith<_$_IPadOS> get copyWith =>
      __$$_IPadOSCopyWithImpl<_$_IPadOS>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPadOSToJson(
      this,
    );
  }
}

abstract class _IPadOS implements IPadOS {
  const factory _IPadOS(
      {final bool? isOld,
      final bool? isNotZoomed,
      final IPadModel? iPadModel}) = _$_IPadOS;

  factory _IPadOS.fromJson(Map<String, dynamic> json) = _$_IPadOS.fromJson;

  @override
  bool? get isOld;
  @override
  bool? get isNotZoomed;
  @override
  IPadModel? get iPadModel;
  @override
  @JsonKey(ignore: true)
  _$$_IPadOSCopyWith<_$_IPadOS> get copyWith =>
      throw _privateConstructorUsedError;
}
