part of 'ai_bloc.dart';

@freezed
sealed class AiEvent with _$AiEvent {
  const factory AiEvent.init() = _InitAiEvent;

  const factory AiEvent.readSupportedAIModels() = _ReadSupportedAIModelsAiEvent;

  const factory AiEvent.selectAIModel({required AiModel selectedAIModels}) =
  _SelectAiModelAiEvent;

  const factory AiEvent.generateSummary(
      {required PlatformFile selectedFile}) = _GenerateSummaryAiEvent;
}
