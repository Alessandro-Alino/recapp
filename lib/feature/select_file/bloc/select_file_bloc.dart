import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recapp/widget/snackbar/model/app_mex_model.dart';

part 'select_file_event.dart';

part 'select_file_state.dart';

part 'select_file_bloc.freezed.dart';

class SelectFileBloc extends Bloc<SelectFileEvent, SelectFileState> {
  SelectFileBloc() : super(SelectFileState()) {
    on<SelectFileEvent>(_onEvent);
  }

  // ====================
  // EVENT
  // ====================
  Future<void> _onEvent(
    SelectFileEvent event,
    Emitter<SelectFileState> emit,
  ) async {
    switch (event) {
      case _InitSelectFileEvent():
        _init(event, emit);
        break;
      case _SelectFileEvent():
        await _selectFile(event, emit);
        break;
      // case _ReadCategsEvent():
      //   awSelectFilet _readCategs(event, emit);
      //   break;
    }
  }

  // ====================
  // ADD EVENT
  // ====================
  void init() => add(const _InitSelectFileEvent());

  void selectFile({required SelectFileSource source}) =>
      add(_SelectFileEvent(source: source));

  // ====================
  // BLOC
  // ====================

  // _Init
  void _init(_InitSelectFileEvent event, Emitter<SelectFileState> emit) {
    emit(
      state.copyWith(
        status: SelectFileStatus.initial,
        selectedFile: null,
        appMex: null,
      ),
    );
  }

  // _Select File
  Future<void> _selectFile(
    _SelectFileEvent event,
    Emitter<SelectFileState> emit,
  ) async {
    try {
      PlatformFile? file;
      switch (event.source) {
        // Select from Gallery
        case SelectFileSource.gallery:
          final picker = ImagePicker();
          final XFile? xFile = await picker.pickImage(
            source: ImageSource.gallery,
          );
          if (xFile != null) {
            final bytes = await xFile.readAsBytes();
            file = PlatformFile(
              name: xFile.name,
              size: bytes.length,
              path: xFile.path,
              bytes: bytes,
            );
          }
          break;
        // Took picture from Camera
        case SelectFileSource.camera:
          final picker = ImagePicker();
          final XFile? xFile = await picker.pickImage(
            source: ImageSource.camera,
          );
          if (xFile != null) {
            final bytes = await xFile.readAsBytes();
            file = PlatformFile(
              name: xFile.name,
              size: bytes.length,
              path: xFile.path,
              bytes: bytes,
            );
          }
          break;
        // Select document from File System
        case SelectFileSource.document:
          final result = await FilePicker.pickFiles();
          if (result != null && result.files.isNotEmpty) {
            file = result.files.first;
          }
          break;
      }

      if (file != null) {
        emit(
          state.copyWith(status: SelectFileStatus.success, selectedFile: file),
        );
      } else {
        init();
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: SelectFileStatus.error,
          appMex: AppMex(
            mex: 'Errore durante la selezione: $e',
            type: MexType.error,
          ),
        ),
      );
      init();
    }
  }
}
