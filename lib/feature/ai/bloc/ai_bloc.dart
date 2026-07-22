import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';
import 'package:recapp/feature/secure_value/repo/secure_value_repo.dart';
import 'package:recapp/widget/snackbar/model/app_mex_model.dart';

import '../repo/ai_repo.dart';

part 'ai_event.dart';

part 'ai_state.dart';

part 'ai_bloc.freezed.dart';

class AiBloc extends Bloc<AiEvent, AiState> {
  final SecureValueRepo _secureValueRepo;

  AiBloc({required this._secureValueRepo}) : super(AiState()) {
    on<AiEvent>(_onEvent);
  }

  // ====================
  // EVENT
  // ====================
  Future<void> _onEvent(AiEvent event, Emitter<AiState> emit) async {
    switch (event) {
      case _InitAiEvent():
        _init(event, emit);
        break;
      case _ReadSupportedAIModelsAiEvent():
        await _readSupportedAIModels(event, emit);
        break;
      // case _ReadCategsEvent():
      //   await _readCategs(event, emit);
      //   break;
    }
  }

  // ====================
  // ADD EVENT
  // ====================
  void init() => add(const _InitAiEvent());

  void readSupportedAIModels() => add(const _ReadSupportedAIModelsAiEvent());

  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitAiEvent event, Emitter<AiState> emit) {
    emit(AiState());
  }

  // _ReadSupportedAIModels
  Future<void> _readSupportedAIModels(
      _ReadSupportedAIModelsAiEvent event,
      Emitter<AiState> emit,
      ) async {
    final List<AiModel> supportedAIModels = AiRepo.supportedAIModels;

    final updatedList = await Future.wait(
      supportedAIModels.map((model) async {
        final hasKey = await _secureValueRepo.checkApiKey(
          key: model.secureStorageKey,
        );
        return model.copyWith(hasApiKey: hasKey);
      }),
    );

    emit(state.copyWith(supportedAIModels: updatedList));
  }
}
