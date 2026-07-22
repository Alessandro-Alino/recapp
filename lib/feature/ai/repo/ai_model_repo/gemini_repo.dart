import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:recapp/config/dio/app_dio.dart';
import 'package:recapp/config/dio/app_dio_err_interceptor.dart';
import 'package:recapp/feature/ai/model/ai_response_model/ai_response_model.dart';
import 'package:recapp/feature/ai/repo/ai_repo.dart';

class GeminiRepo implements AiRepo {
  // Config
  final Dio _dio = AppDio.instance.dio;
  final String _baseUrl =
      'https://generativelanguage.googleapis.com/v1beta/interactions';
  final Duration _connectTimeout = const Duration(seconds: 30);
  final Duration _receiveTimeout = const Duration(seconds: 30);

  GeminiRepo() {
    // Update Base Options for Gemini
    _dio.options.baseUrl = _baseUrl;
    _dio.options.connectTimeout = _connectTimeout;
    _dio.options.receiveTimeout = _receiveTimeout;

    // Create Interceptors for Gemini
    _dio.interceptors.addAll([
      // Gemini Interceptor
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // GET the API Key
          final apiKey = '';

          if (apiKey != null && apiKey.isNotEmpty) {
            options.headers['Content-Type'] = 'application/json';
            options.headers['x-goog-api-key'] = apiKey;
            return handler.next(options);
          }

          // STOP the request if the API Key is not found
          return handler.reject(
            DioException(
              requestOptions: options,
              error: 'API Key di Gemini non trovata nel Secure Storage',
              type: DioExceptionType.badResponse,
            ),
          );
        },
      ),
      // Error Interceptor
      AppDioErrInterceptor(),
      // LOG Interceptor
      LogInterceptor(
        request: false,
        requestHeader: false,
        requestBody: false,
        responseHeader: false,
        responseBody: true,
        error: true,
      ),
    ]);
  }

  @override
  Future<AiResponseModel> summarizeFile({
    required String base64Data,
    required String fileType,
    required String mimeType,
  }) async {
    final AiResponseModel aiResponse;
    try {
      log('TYPE: $fileType');
      log('MIME Type: $mimeType');
      // TOTAL Response
      final response = await _dio.post(
        '',
        data: {
          "model": "gemini-3.1-flash-lite",
          "input": [
            {"type": "text", "text": AiRepo.prompt},
            {"type": fileType, "data": base64Data, "mime_type": mimeType},
          ],
        },
      );
      log('RESPONSE: $response');
      // Pattern to find [TITOLO] and [RIASSUNTO]
      aiResponse = AiRepo.parseAIResponse(response.data);
      return aiResponse;
    } on DioException catch (e) {
      return AiResponseModel(
        title: '[DIO] Errore nel riassunto',
        summary: '[${e.response?.statusCode}] - ${e.response}',
      );
    } catch (e) {
      return AiResponseModel(title: 'Errore nel riassunto', summary: '$e');
    }
  }
}
