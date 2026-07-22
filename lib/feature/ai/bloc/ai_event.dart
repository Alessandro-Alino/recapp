part of 'ai_bloc.dart';

@freezed
sealed class AiEvent with _$AiEvent {
  const factory AiEvent.init() = _InitAiEvent;
  const factory AiEvent.readSupportedAIModels() = _ReadSupportedAIModelsAiEvent;
  //const factory AiEvent.create() = _CreateAiEvent;
  //const factory AiEvent.update() = _UpdateAiEvent;
  //const factory AiEvent.delete() = _DeleteAiEvent;
  //const factory AiEvent.search() = _SearchAiEvent;
}