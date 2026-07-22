import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';
import 'package:recapp/feature/ai/model/ai_response_model/ai_response_model.dart';
import 'package:recapp/feature/ai/repo/ai_model_repo/gemini_repo.dart';

abstract class AiRepo {
  Future<AiResponseModel> summarizeFile({
    required String base64Data,
    required String fileType,
    required String mimeType,
  });

  // FACTORY: choose the right repo based on the model
  factory AiRepo.fromModel(AiModel model) {
    switch (model.name) {
      case gemini:
        return GeminiRepo();
      default:
        throw UnimplementedError('Modello ${model.name} non supportato');
    }
  }

  // AI Model Name
  static const String gemini = 'Gemini';
  static const String claude = 'Claude';
  static const String chatgpt = 'Chat GPT';
  static const String deepseek = 'DeepSeek';
  static const String qwen = 'Qwen';
  static const String kimi = 'Kimi';

  // Secure storage keys
  static const String geminiStorageKey = 'gemini_secure_storage_key';
  static const String claudeStorageKey = 'claude_secure_storage_key';
  static const String chatgptStorageKey = 'chatgpt_secure_storage_key';
  static const String deepseekStorageKey = 'deepseek_secure_storage_key';
  static const String qwenStorageKey = 'qwen_secure_storage_key';
  static const String kimiStorageKey = 'kimi_secure_storage_key';

  static const List<AiModel> supportedAIModels = [
    AiModel(
      provider: gemini,
      name: gemini,
      secureStorageKey: geminiStorageKey,
      hasApiKey: false,
    ),
    AiModel(
      provider: claude,
      name: claude,
      secureStorageKey: claudeStorageKey,
      hasApiKey: false,
    ),
    AiModel(
      provider: chatgpt,
      name: chatgpt,
      secureStorageKey: chatgptStorageKey,
      hasApiKey: false,
    ),
    AiModel(
      provider: deepseek,
      name: deepseek,
      secureStorageKey: deepseekStorageKey,
      hasApiKey: false,
    ),
    AiModel(
      provider: qwen,
      name: qwen,
      secureStorageKey: qwenStorageKey,
      hasApiKey: false,
    ),
    AiModel(
      provider: kimi,
      name: kimi,
      secureStorageKey: kimiStorageKey,
      hasApiKey: false,
    ),
  ];

  // Prompt for AI
  static const String prompt =
      '''Analizza questo file e fornisci: un TITOLO breve e descrittivo (massimo 5-7 parole) e un RIASSUNTO dettagliato del contenuto.
                     Formatta la risposta in questo modo:
                       [TITOLO] [inserisci il titolo qui]
                       [RIASSUNTO] [inserisci il riassunto qui]''';

  static AiResponseModel parseAIResponse(String response) {
    final regex = RegExp(
      r'\[TITOLO\]\s*(?<title>.+?)\s*\[RIASSUNTO\]\s*(?<summary>.+)',
      caseSensitive: false,
      dotAll: true,
    );
    final match = regex.firstMatch(response);
    if (match != null) {
      return AiResponseModel(
        title: match.group(0) ?? 'Nessun titolo trovato',
        summary: match.group(1) ?? 'Nessun riassunto trovato',
      );
    } else {
      return AiResponseModel(
        title: 'Errore.',
        summary: 'Risposta AI non conforme al formato atteso.',
      );
    }
  }
}
