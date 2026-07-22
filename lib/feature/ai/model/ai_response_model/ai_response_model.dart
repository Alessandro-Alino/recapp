import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_response_model.freezed.dart';
part 'ai_response_model.g.dart';

@freezed
sealed class AiResponseModel with _$AiResponseModel {
  const factory AiResponseModel({
    required String title,
    required String summary,
  }) = _AiResponseModel;

  factory AiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AiResponseModelFromJson(json);
}