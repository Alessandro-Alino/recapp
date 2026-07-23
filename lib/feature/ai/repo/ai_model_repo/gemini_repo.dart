import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:recapp/config/dio/app_dio.dart';
import 'package:recapp/config/dio/app_dio_err_interceptor.dart';
import 'package:recapp/feature/ai/model/ai_response_model/ai_response_model.dart';
import 'package:recapp/feature/ai/model/gemini_response_model/gemini_response_model.dart';
import 'package:recapp/feature/ai/repo/ai_repo.dart';
import 'package:recapp/feature/secure_value/repo/secure_value_repo.dart';

class GeminiRepo implements AiRepo {
  final SecureValueRepo _secureValueRepo;

  // Config
  final Dio _dio = AppDio.instance.dio;
  final String _baseUrl = 'https://generativelanguage.googleapis.com/v1beta';
  final Duration _connectTimeout = const Duration(seconds: 30);
  final Duration _receiveTimeout = const Duration(seconds: 30);

  GeminiRepo({required this._secureValueRepo});

  Future<void> _dioGemini() async {
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
          final apiKey = await _secureValueRepo.readApiKey(
            key: AiRepo.geminiStorageKey,
          );

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
  Future<AiResponseModel> generateSummary({required PlatformFile file}) async {
    final AiResponseModel aiResponse;
    try {
      // Get DATA for GEMINI
      final String base64Data = base64Encode(await file.readAsBytes());
      final String fileType = AiRepo.getFileType(file.extension);
      final String mimeType = AiRepo.getMIMEType(file.extension);
      log('TYPE: $fileType');
      log('MIME Type: $mimeType');
      // Add DIO config for GEMINI
      await _dioGemini();
      // TOTAL Response
      final response = await _dio.post(
        '/interactions',
        data: {
          "model": "gemini-3.6-flash",
          "input": [
            {"type": "text", "text": AiRepo.prompt},
            {"type": fileType, "data": base64Data, "mime_type": mimeType},
          ],
        },
      );
      final GeminiResponseModel geminiResponseModel =
          GeminiResponseModel.fromJson(response.data);

      // Pattern to find [TITOLO] and [RIASSUNTO] only when type==model_output
      // Filter the thought
      aiResponse = AiRepo.parseAIResponse(
        '${geminiResponseModel.steps.where((s) => s.type == 'model_output').first.content?.first.text}',
      );
      return aiResponse;
    } on DioException catch (e) {
      return AiResponseModel(
        title: '[DIO] Errore nel riassunto',
        summary: '[${e.response?.statusCode}] - ${e.response} - $e',
      );
    } catch (e) {
      return AiResponseModel(title: 'Errore nel riassunto', summary: '$e');
    }
  }
}
