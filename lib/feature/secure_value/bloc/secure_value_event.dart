part of 'secure_value_bloc.dart';

@freezed
sealed class SecureValueEvent with _$SecureValueEvent {
  const factory SecureValueEvent.init() = _InitSecureValueEvent;
  const factory SecureValueEvent.saveAPIKey({required AiModel aiModel,required String apiKey}) = _SaveAPIKeySecureValueEvent;
  const factory SecureValueEvent.readAPIKey({required AiModel aiModel}) = _ReadAPIKeySecureValueEvent;
  const factory SecureValueEvent.deleteAPIKey({required AiModel aiModel}) = _DeleteAPIKeySecureValueEvent;
}