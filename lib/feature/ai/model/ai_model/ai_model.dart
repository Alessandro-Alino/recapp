import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_model.freezed.dart';
part 'ai_model.g.dart';

@freezed
sealed class AiModel with _$AiModel {
  const factory AiModel({
    required String name,
    required String provider,
    required String secureStorageKey,
    required bool hasApiKey
  }) = _AiModel;

  factory AiModel.fromJson(Map<String, dynamic> json) =>
      _$AiModelFromJson(json);
}