part of 'select_file_bloc.dart';

enum SelectFileSource { gallery, camera, document }

@freezed
sealed class SelectFileEvent with _$SelectFileEvent {
  const factory SelectFileEvent.init() = _InitSelectFileEvent;
  const factory SelectFileEvent.selectFile({required SelectFileSource source}) =
      _SelectFileEvent;
}
