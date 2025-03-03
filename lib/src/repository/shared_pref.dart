import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService extends GetxService {
  late SharedPreferences _prefs;
  static final SharedPrefService _instance = SharedPrefService._();

  SharedPrefService._();

  // Keys
  static const String _fcmTokenKey = 'fcm_token';
  static const String _themeKey = 'theme_key';
  static const String _currentLocaleKey = 'current_Locale';

  // Variable
  RxBool isDarkMode = true.obs;

  static Future<SharedPrefService> init() async {
    _instance._prefs = await SharedPreferences.getInstance();
    _instance.isDarkMode.value = _instance._prefs.getBool(_themeKey) ?? false;
    return _instance;
  }

  ThemeMode get theme => isDarkMode.value ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    _prefs.setBool(_themeKey, isDarkMode.value);
    Get.changeThemeMode(theme);
  }

  /// Simpan FCM token
  Future<void> setFcmToken(String token) async {
    await _prefs.setString(_fcmTokenKey, token);
  }

  /// Ambil FCM token
  String? getFcmToken() => _prefs.getString(_fcmTokenKey);

  String getSavedLocale() => _prefs.getString(_currentLocaleKey) ?? "en";

  Future<void> setLocale(String languangeKey) async {
    await _prefs.setString(_currentLocaleKey, languangeKey);
  }
}
