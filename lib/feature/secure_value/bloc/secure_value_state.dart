part of 'secure_value_bloc.dart';

@freezed
sealed class SecureValueState with _$SecureValueState {
  const factory SecureValueState.init() = InitialSecureValueState;
  const factory SecureValueState.loading() = LoadingSecureValueState;
  const factory SecureValueState.success() = SuccessSecureValueState;
  const factory SecureValueState.error() = ErrorSecureValueState;
}