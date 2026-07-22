part of 'ai_bloc.dart';

enum AiStatus { initial, loading, success, error }

@freezed
sealed class AiState with _$AiState {
  const factory AiState({
    @Default(AiStatus.initial) AiStatus status,
    @Default([]) List<AiModel> supportedAIModels,
    @ Default(null) AppMex? appMex,
  }) = _AiState;
}
