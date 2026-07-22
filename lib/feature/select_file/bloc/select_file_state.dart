part of 'select_file_bloc.dart';

enum SelectFileStatus { initial, loading, success, error }

@freezed
sealed class SelectFileState with _$SelectFileState {
  const factory SelectFileState({
    @Default(SelectFileStatus.initial) SelectFileStatus status,
    @Default(null) PlatformFile? selectedFile,
    @Default(null) AppMex? appMex,
  }) = _SelectFileState;
}
