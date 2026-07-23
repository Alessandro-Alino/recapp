// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeminiResponseModel _$GeminiResponseModelFromJson(Map<String, dynamic> json) =>
    _GeminiResponseModel(
      id: json['id'] as String,
      status: json['status'] as String,
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
      created: json['created'] as String,
      updated: json['updated'] as String,
      serviceTier: json['service_tier'] as String,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => Step.fromJson(e as Map<String, dynamic>))
          .toList(),
      object: json['object'] as String,
      model: json['model'] as String,
    );

Map<String, dynamic> _$GeminiResponseModelToJson(
  _GeminiResponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'status': instance.status,
  'usage': instance.usage,
  'created': instance.created,
  'updated': instance.updated,
  'service_tier': instance.serviceTier,
  'steps': instance.steps,
  'object': instance.object,
  'model': instance.model,
};

_Usage _$UsageFromJson(Map<String, dynamic> json) => _Usage(
  totalTokens: (json['total_tokens'] as num).toInt(),
  totalInputTokens: (json['total_input_tokens'] as num).toInt(),
  inputTokensByModality: (json['input_tokens_by_modality'] as List<dynamic>)
      .map((e) => InputTokensByModality.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCachedTokens: (json['total_cached_tokens'] as num).toInt(),
  totalOutputTokens: (json['total_output_tokens'] as num).toInt(),
  totalToolUseTokens: (json['total_tool_use_tokens'] as num).toInt(),
  totalThoughtTokens: (json['total_thought_tokens'] as num).toInt(),
);

Map<String, dynamic> _$UsageToJson(_Usage instance) => <String, dynamic>{
  'total_tokens': instance.totalTokens,
  'total_input_tokens': instance.totalInputTokens,
  'input_tokens_by_modality': instance.inputTokensByModality,
  'total_cached_tokens': instance.totalCachedTokens,
  'total_output_tokens': instance.totalOutputTokens,
  'total_tool_use_tokens': instance.totalToolUseTokens,
  'total_thought_tokens': instance.totalThoughtTokens,
};

_InputTokensByModality _$InputTokensByModalityFromJson(
  Map<String, dynamic> json,
) => _InputTokensByModality(
  modality: json['modality'] as String,
  tokens: (json['tokens'] as num).toInt(),
);

Map<String, dynamic> _$InputTokensByModalityToJson(
  _InputTokensByModality instance,
) => <String, dynamic>{
  'modality': instance.modality,
  'tokens': instance.tokens,
};

_Step _$StepFromJson(Map<String, dynamic> json) => _Step(
  signature: json['signature'] as String?,
  type: json['type'] as String?,
  content: (json['content'] as List<dynamic>?)
      ?.map((e) => Content.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StepToJson(_Step instance) => <String, dynamic>{
  'signature': instance.signature,
  'type': instance.type,
  'content': instance.content,
};

_Content _$ContentFromJson(Map<String, dynamic> json) =>
    _Content(text: json['text'] as String?, type: json['type'] as String);

Map<String, dynamic> _$ContentToJson(_Content instance) => <String, dynamic>{
  'text': instance.text,
  'type': instance.type,
};
