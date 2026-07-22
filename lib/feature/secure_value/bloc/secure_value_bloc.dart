import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';
import 'package:recapp/feature/secure_value/repo/secure_value_repo.dart';

part 'secure_value_event.dart';

part 'secure_value_state.dart';

part 'secure_value_bloc.freezed.dart';

class SecureValueBloc extends Bloc<SecureValueEvent, SecureValueState> {
  final SecureValueRepo _secureValueRepo;

  SecureValueBloc({required this._secureValueRepo})
    : super(const SecureValueState.init()) {
    on<SecureValueEvent>(_onEvent);
  }

  // ====================
  // EVENT
  // ====================
  Future<void> _onEvent(
    SecureValueEvent event,
    Emitter<SecureValueState> emit,
  ) async {
    switch (event) {
      case _InitSecureValueEvent():
        _init(event, emit);
        break;
      case _SaveAPIKeySecureValueEvent():
        await _saveAPIKey(event, emit);
        break;
      case _ReadAPIKeySecureValueEvent():
        await _readAPIKey(event, emit);
        break;
      case _DeleteAPIKeySecureValueEvent():
        await _deleteAPIKey(event, emit);
        break;
    }
  }

  // ====================
  // ADD EVENT
  // ====================
  void init() => add(const _InitSecureValueEvent());

  void saveAPIKey({required AiModel aiModel, required String apiKey}) =>
      add(_SaveAPIKeySecureValueEvent(aiModel: aiModel, apiKey: apiKey));

  void readAPIKey({required AiModel aiModel}) => add(_ReadAPIKeySecureValueEvent(aiModel: aiModel));

  void deleteAPIKey({required AiModel aiModel}) => add(_DeleteAPIKeySecureValueEvent(aiModel: aiModel));


  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitSecureValueEvent event, Emitter<SecureValueState> emit) {
    emit(const SecureValueState.init());
  }

  // _SaveAPIKey
  Future<void> _saveAPIKey(
    _SaveAPIKeySecureValueEvent event,
    Emitter<SecureValueState> emit,
  ) async {
    final bool value = await _secureValueRepo.saveApiKey(
      key: event.aiModel.secureStorageKey,
      apiKey: event.apiKey,
    );
    if (value) {
      emit(const SecureValueState.success());
      init();
    } else {
      emit(const SecureValueState.error());
      init();
    }
  }

  // _ReadAPIKey
  Future<void> _readAPIKey(
    _ReadAPIKeySecureValueEvent event,
    Emitter<SecureValueState> emit,
  ) async {
    final String? value = await _secureValueRepo.readApiKey(
      key: event.aiModel.secureStorageKey,
    );
    if (value != null && value.isNotEmpty) {
      emit(const SecureValueState.success());
      init();
    } else {
      emit(const SecureValueState.error());
      init();
    }
  }

  // _DeleteAPIKey
  Future<void> _deleteAPIKey(
      _DeleteAPIKeySecureValueEvent event,
      Emitter<SecureValueState> emit,
      ) async {
    final bool value = await _secureValueRepo.deleteApiKey(
      key: event.aiModel.secureStorageKey,
    );
    if (value) {
      emit(const SecureValueState.success());
      init();
    } else {
      emit(const SecureValueState.error());
      init();
    }
  }
}
