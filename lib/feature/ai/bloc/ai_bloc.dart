import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';
import 'package:recapp/feature/ai/model/ai_response_model/ai_response_model.dart';
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
      case _SelectAiModelAiEvent():
        _selectAiModel(event, emit);
      case _GenerateSummaryAiEvent():
        await _generateSummary(event, emit);
    }
  }

  // ====================
  // ADD EVENT
  // ====================
  void init() => add(const _InitAiEvent());

  void readSupportedAIModels() => add(const _ReadSupportedAIModelsAiEvent());

  void selectAiModel({required AiModel selectedAIModels}) =>
      add(_SelectAiModelAiEvent(selectedAIModels: selectedAIModels));

  void generateSummary({required PlatformFile selectedFile}) =>
      add(_GenerateSummaryAiEvent(selectedFile: selectedFile));

  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitAiEvent event, Emitter<AiState> emit) {
    emit(
      state.copyWith(
        status: AiStatus.initial,
        aiResponse: AiResponseModel(),
        appMex: null,
      ),
    );
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

  // _SelectAiModelAiEvent
  void _selectAiModel(_SelectAiModelAiEvent event, Emitter<AiState> emit) {
    final AiModel selectedAIModels = event.selectedAIModels;
    emit(state.copyWith(selectedAIModels: selectedAIModels));
  }

  // _GenerateSummaryAiEvent
  Future<void> _generateSummary(
    _GenerateSummaryAiEvent event,
    Emitter<AiState> emit,
  ) async {
    try {
      emit(state.copyWith(status: AiStatus.loading));

      if (state.selectedAIModels != null) {
        final AiResponseModel aiResponse = await AiRepo.fromModel(
          state.selectedAIModels!,
          _secureValueRepo,
        ).generateSummary(file: event.selectedFile);

        emit(state.copyWith(status: AiStatus.success, aiResponse: aiResponse));
      }
    } catch (e) {
      final AiResponseModel aiResponse = AiResponseModel(
        title: 'Errore',
        summary: '$e',
      );
      emit(state.copyWith(status: AiStatus.error, aiResponse: aiResponse));
    }
  }
}
