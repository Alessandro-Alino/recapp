import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSecureStorage {
  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  AppSecureStorage();

  Future<void> writeSecureValue({
    required String key,
    required String value,
  }) async {
    try {
      await _storage.write(key: key, value: value);
      log('[SECURE_STORAGE] WRITE "$key": SUCCESS');
    } catch (e, stackTrace) {
      log(
        '[SECURE_STORAGE] WRITE "$key": FAILED',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<String?> readSecureValue({required String key}) async {
    try {
      final value = await _storage.read(key: key);
      log('[SECURE_STORAGE] READ "$key"');
      return value;
    } catch (e, stackTrace) {
      log(
        '[SECURE_STORAGE] READ "$key": FAILED',
        error: e,
        stackTrace: stackTrace,
      );
      return null;
    }
  }

  Future<void> deleteSecureValue({required String key}) async {
    try {
      await _storage.delete(key: key);
      log('[SECURE_STORAGE] DELETE "$key": SUCCESS');
    } catch (e, stackTrace) {
      log(
        '[SECURE_STORAGE] DELETE "$key": FAILED',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> clearAllSecureValue() async {
    try {
      await _storage.deleteAll();
      log('[SECURE_STORAGE] CLEAR ALL: SUCCESS');
    } catch (e, stackTrace) {
      log(
        '[SECURE_STORAGE] CLEAR ALL: FAILED',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<Map<String, String>> readAllSecureValue() async {
    try {
      final value = await _storage.readAll();
      log('[SECURE_STORAGE] READ ALL:\n $value');
      return value;
    } catch (e, stackTrace) {
      log(
        '[SECURE_STORAGE] READ ALL: FAILED',
        error: e,
        stackTrace: stackTrace,
      );
      return {};
    }
  }

  Future<bool> containSecureValue({required String key}) async {
    try {
      final bool value = await _storage.containsKey(key: key);
      log('[SECURE_STORAGE] CONSTAINS KEY $key: $value');
      return value;
    } catch (e) {
      log('[SECURE_STORAGE] CONSTAINS KEY $key: $e: FAILED');
      return false;
    }
  }
}
