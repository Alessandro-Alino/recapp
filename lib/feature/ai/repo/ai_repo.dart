import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:recapp/feature/ai/model/ai_model/ai_model.dart';
import 'package:recapp/feature/ai/model/ai_response_model/ai_response_model.dart';
import 'package:recapp/feature/ai/repo/ai_model_repo/gemini_repo.dart';
import 'package:recapp/feature/secure_value/repo/secure_value_repo.dart';

abstract class AiRepo {
  Future<AiResponseModel> generateSummary({required PlatformFile file});

  // FACTORY: choose the right repo based on the model
  factory AiRepo.fromModel(AiModel model, SecureValueRepo secureValueRepo) {
    log('[FACTORY FROM MODEL]: ${model.name}');
    switch (model.name) {
      case gemini:
        return GeminiRepo(secureValueRepo: secureValueRepo);
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

  // List of Supported AI Models
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
      '''Analizza questo file e fornisci: un TITOLO breve 
      e descrittivo (massimo 5-7 parole) e un RIASSUNTO dettagliato del contenuto.
      Formatta la risposta in questo modo:
        [TITOLO] [inserisci il titolo qui]
        [RIASSUNTO] [inserisci il riassunto qui]''';

  // Create BASE Response that every model need to follow
  static AiResponseModel parseAIResponse(String response) {
    log('TEST_RESPONSE $response');
    final regex = RegExp(
      r'\[TITOLO\]\s*(?<title>.+?)\s*\[RIASSUNTO\]\s*(?<summary>.+)',
      caseSensitive: false,
      dotAll: true,
    );
    final match = regex.firstMatch(response);
    if (match != null) {
      return AiResponseModel(
        title: match.group(1) ?? 'Nessun titolo trovato',
        summary: match.group(2) ?? 'Nessun riassunto trovato',
      );
    } else {
      return AiResponseModel(
        title: 'Errore.',
        summary: 'Risposta AI non conforme al formato atteso.',
      );
    }
  }

  // ---------------
  // GENERIC HELPERS
  // ---------------

  // Image Extensions
  static final imageExtensions = [
    '.png',
    '.jpg',
    '.jpeg',
    '.gif',
    '.webp',
    '.heic',
    '.heif',
    '.bmp',
    '.tiff',
    '.svg',
  ];

  // Document Extensions
  static final docExtensions = [
    '.pdf',
    '.doc',
    '.docx',
    '.xls',
    '.xlsx',
    '.ppt',
    '.pptx',
    '.txt',
    '.rtf',
    '.md',
  ];

  // Audio Extensions
  static final audioExtensions = [
    '.mp3',
    '.wav',
    '.ogg',
    '.flac',
    '.aac',
    '.wma',
    '.m4a',
  ];

  static Icon getIconByExtension(String? extension) {
    final ext = '.$extension';

    if (imageExtensions.contains(ext)) {
      return Icon(Icons.image);
    } else if (docExtensions.contains(ext)) {
      return Icon(Icons.file_copy);
    } else if (audioExtensions.contains(ext)) {
      return Icon(Icons.audio_file_rounded);
    } else {
      return Icon(Icons.insert_drive_file);
    }
  }

  static String getFileType(String? extension) {
    final ext = '.$extension';

    if (imageExtensions.contains(ext)) {
      return 'image';
    } else if (docExtensions.contains(ext)) {
      return 'document';
    } else if (audioExtensions.contains(ext)) {
      return 'audio';
    } else {
      return 'document';
    }
  }

  static String getMIMEType(String? extension) {
    final ext = '.$extension';

    if (imageExtensions.contains(ext)) {
      switch (ext) {
        case '.jpg':
          return 'image/jpeg';
        case _:
          return 'image/$extension';
      }
    } else if (docExtensions.contains(ext)) {
      switch (ext) {
        case '.txt' || '.csv' || '.html' || '.htm' || '.md':
          return 'text/$extension';
        case _:
          return 'application/$extension';
      }
    } else if (audioExtensions.contains(ext)) {
      return 'audio/$extension';
    } else {
      return 'application/octet-stream';
    }
  }
}
