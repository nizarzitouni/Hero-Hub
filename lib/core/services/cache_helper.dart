import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _sharedPreferences;

  CacheHelper() {
    init();
  }

  // Initialize the cache.
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  // Save data to local storage using a key.
  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is bool) {
      return await _sharedPreferences.setBool(key, value);
    } else if (value is String) {
      return await _sharedPreferences.setString(key, value);
    } else if (value is int) {
      return await _sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return await _sharedPreferences.setDouble(key, value);
    } else if (value is List<String>) {
      return await _sharedPreferences.setStringList(key, value);
    } else {
      throw ArgumentError('Unsupported value type: ${value.runtimeType}');
    }
  }

  // Retrieve data from local storage using a key.
  dynamic getData({required String key}) {
    return _sharedPreferences.get(key);
  }

  // Remove data from local storage using a key.
  Future<bool> removeData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  // Check if local storage contains a key.
  Future<bool> containsKey({required String key}) async {
    return _sharedPreferences.containsKey(key);
  }

  // Clear all data in local storage.
  Future<bool> clearData() async {
    return await _sharedPreferences.clear();
  }
}

abstract class CacheKeys {
  static const String onBoardingVisited = "onBoardingVisited";
  static const String isLogedIn = "isLogedIn";
}
