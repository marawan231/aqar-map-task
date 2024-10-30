import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> set({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }

  Future<String?> get({required String key}) async => await storage.read(key: key);

  Future<void> deleteSecureData(String key) async {
    await storage.delete(key: key);
  }
}
