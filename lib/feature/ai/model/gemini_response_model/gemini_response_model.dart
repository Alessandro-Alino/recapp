import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_response_model.freezed.dart';
part 'gemini_response_model.g.dart';

@freezed
sealed class GeminiResponseModel with _$GeminiResponseModel {
  const factory GeminiResponseModel({
    required String id,
    required String status,
    required Usage usage,
    required String created,
    required String updated,
    @JsonKey(name: 'service_tier') required String serviceTier,
    required List<Step> steps,
    required String object,
    required String model,
  }) = _GeminiResponseModel;

  factory GeminiResponseModel.fromJson(Map<String, Object?> json) =>
      _$GeminiResponseModelFromJson(json);
}

@freezed
sealed class Usage with _$Usage {
  const factory Usage({
    @JsonKey(name: 'total_tokens') required int totalTokens,
    @JsonKey(name: 'total_input_tokens') required int totalInputTokens,
    @JsonKey(name: 'input_tokens_by_modality')
    required List<InputTokensByModality> inputTokensByModality,
    @JsonKey(name: 'total_cached_tokens') required int totalCachedTokens,
    @JsonKey(name: 'total_output_tokens') required int totalOutputTokens,
    @JsonKey(name: 'total_tool_use_tokens') required int totalToolUseTokens,
    @JsonKey(name: 'total_thought_tokens') required int totalThoughtTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, Object?> json) => _$UsageFromJson(json);
}

@freezed
sealed class InputTokensByModality with _$InputTokensByModality {
  const factory InputTokensByModality({
    required String modality,
    required int tokens,
  }) = _InputTokensByModality;

  factory InputTokensByModality.fromJson(Map<String, Object?> json) =>
      _$InputTokensByModalityFromJson(json);
}

@freezed
sealed class Step with _$Step {
  const factory Step({
    String? signature,
    String? type,
    List<Content>? content,
  }) = _Step;

  factory Step.fromJson(Map<String, Object?> json) => _$StepFromJson(json);
}

@freezed
sealed class Content with _$Content {
  const factory Content({
    String? text,
    required String type,
  }) = _Content;

  factory Content.fromJson(Map<String, Object?> json) =>
      _$ContentFromJson(json);
}