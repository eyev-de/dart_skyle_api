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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IPadOS _$IPadOSFromJson(Map<String, dynamic> json) {
  return _IPadOS.fromJson(json);
}

/// @nodoc
mixin _$IPadOS {
  bool? get isOld => throw _privateConstructorUsedError;
  bool? get isNotZoomed => throw _privateConstructorUsedError;
  IPadModel? get iPadModel => throw _privateConstructorUsedError;

  /// Serializes this IPadOS to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IPadOS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of IPadOS
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$IPadOSImplCopyWith<$Res> implements $IPadOSCopyWith<$Res> {
  factory _$$IPadOSImplCopyWith(
          _$IPadOSImpl value, $Res Function(_$IPadOSImpl) then) =
      __$$IPadOSImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isOld, bool? isNotZoomed, IPadModel? iPadModel});
}

/// @nodoc
class __$$IPadOSImplCopyWithImpl<$Res>
    extends _$IPadOSCopyWithImpl<$Res, _$IPadOSImpl>
    implements _$$IPadOSImplCopyWith<$Res> {
  __$$IPadOSImplCopyWithImpl(
      _$IPadOSImpl _value, $Res Function(_$IPadOSImpl) _then)
      : super(_value, _then);

  /// Create a copy of IPadOS
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOld = freezed,
    Object? isNotZoomed = freezed,
    Object? iPadModel = freezed,
  }) {
    return _then(_$IPadOSImpl(
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
class _$IPadOSImpl implements _IPadOS {
  const _$IPadOSImpl(
      {this.isOld = false,
      this.isNotZoomed = false,
      this.iPadModel = IPadModel.iPad13_10});

  factory _$IPadOSImpl.fromJson(Map<String, dynamic> json) =>
      _$$IPadOSImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IPadOSImpl &&
            (identical(other.isOld, isOld) || other.isOld == isOld) &&
            (identical(other.isNotZoomed, isNotZoomed) ||
                other.isNotZoomed == isNotZoomed) &&
            (identical(other.iPadModel, iPadModel) ||
                other.iPadModel == iPadModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isOld, isNotZoomed, iPadModel);

  /// Create a copy of IPadOS
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IPadOSImplCopyWith<_$IPadOSImpl> get copyWith =>
      __$$IPadOSImplCopyWithImpl<_$IPadOSImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IPadOSImplToJson(
      this,
    );
  }
}

abstract class _IPadOS implements IPadOS {
  const factory _IPadOS(
      {final bool? isOld,
      final bool? isNotZoomed,
      final IPadModel? iPadModel}) = _$IPadOSImpl;

  factory _IPadOS.fromJson(Map<String, dynamic> json) = _$IPadOSImpl.fromJson;

  @override
  bool? get isOld;
  @override
  bool? get isNotZoomed;
  @override
  IPadModel? get iPadModel;

  /// Create a copy of IPadOS
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IPadOSImplCopyWith<_$IPadOSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
