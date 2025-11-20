// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Switch _$SwitchFromJson(Map<String, dynamic> json) => _Switch(
      isPresent: json['isPresent'] as bool,
      actions: SwitchActions.fromJson(json['actions'] as Map<String, dynamic>),
      availableActions: (json['availableActions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SwitchToJson(_Switch instance) => <String, dynamic>{
      'isPresent': instance.isPresent,
      'actions': instance.actions,
      'availableActions': instance.availableActions,
    };
