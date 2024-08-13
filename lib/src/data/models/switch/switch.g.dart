// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwitchImpl _$$SwitchImplFromJson(Map<String, dynamic> json) => _$SwitchImpl(
      isPresent: json['isPresent'] as bool,
      actions: SwitchActions.fromJson(json['actions'] as Map<String, dynamic>),
      availableActions: (json['availableActions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SwitchImplToJson(_$SwitchImpl instance) =>
    <String, dynamic>{
      'isPresent': instance.isPresent,
      'actions': instance.actions,
      'availableActions': instance.availableActions,
    };
