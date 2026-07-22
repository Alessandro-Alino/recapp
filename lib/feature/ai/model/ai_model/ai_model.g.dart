// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AiModel _$AiModelFromJson(Map<String, dynamic> json) => _AiModel(
  name: json['name'] as String,
  provider: json['provider'] as String,
  secureStorageKey: json['secureStorageKey'] as String,
  hasApiKey: json['hasApiKey'] as bool,
);

Map<String, dynamic> _$AiModelToJson(_AiModel instance) => <String, dynamic>{
  'name': instance.name,
  'provider': instance.provider,
  'secureStorageKey': instance.secureStorageKey,
  'hasApiKey': instance.hasApiKey,
};
