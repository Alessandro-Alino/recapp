import 'dart:developer';
import 'package:recapp/config/secure_storage/app_secure_storage.dart';

class SecureValueRepo {
  final AppSecureStorage _secureStorage;

  SecureValueRepo({required this._secureStorage});

  // Save ApiKey in Secure Storage
  Future<bool> saveApiKey({
    required String key,
    required String apiKey,
  }) async {
    try {
      await _secureStorage.writeSecureValue(key: key, value: apiKey);
      return true;
    } catch (e) {
      log('[API_KEY_REPO] Error: $e');
      return false;
    }
  }

  // Read ApiKey from Secure Storage
  Future<String?> readApiKey({required String key}) async {
    try {
      final apiKey = await _secureStorage.readSecureValue(key: key);
      if (apiKey != null) {
        return apiKey;
      } else {
        return null;
      }
    } catch (e) {
      log('[API_KEY_REPO] Error: $e');
      return null;
    }
  }

  // Read ApiKey from Secure Storage
  Future<bool> checkApiKey({required String key}) async {
    try {
      final apiKey = await _secureStorage.readSecureValue(key: key);
      if (apiKey != null) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      log('[API_KEY_REPO] Error: $e');
      return false;
    }
  }

  // Delete ApiKey from Secure Storage
  Future<bool> deleteApiKey({required String key}) async {
    try {
      await _secureStorage.deleteSecureValue(key: key);
      return true;
    } catch (e) {
      log('[API_KEY_REPO] Error: $e');
      return false;
    }
  }
}
