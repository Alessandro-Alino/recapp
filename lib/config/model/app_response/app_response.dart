import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_response.freezed.dart';

@freezed
sealed class AppResponse<T> with _$AppResponse<T> {
  const factory AppResponse.success({required T data}) = Success<T>;

  const factory AppResponse.failure({required String message, int? code}) =
      Failure<T>;

  const AppResponse._();
}

/// ### Utilizzo tipico
///
/// ```dart
/// // REPO: ritorna AppResponse
/// Future<AppResponse<User>> getUser() async {
///   try {
///     return AppResponse.success(await api.fetchUser());
///   } catch (e) {
///     return AppResponse.failure(e.toString(), code: 500);
///   }
/// }
///
/// // BLOC: gestisce con switch
/// final res = await repo.getUser();
/// switch (res) {
///   case Success(data: final user):
///     emit(Loaded(user));
///   case Failure(message: final msg):
///     emit(Error(msg));
/// }
///
/// // UI: gestisce con switch
/// switch (state.response) {
///   case Success(data: final user):
///     return Text(user.name);
///   case Failure(message: final msg, code: final code):
///     return Text('[$code] $msg');
/// }
/// ```
