import 'package:get/get.dart';

import '../../src/repository/shared_pref.dart';
import 'generated/translations.g.dart' show AppLocale, LocaleSettings;

class LocaleService extends GetxService {
  static LocaleService get to => Get.find<LocaleService>();

  final _prefs = Get.find<SharedPrefService>();

  late AppLocale _locale;

  AppLocale get locale => _locale;

  /// Inisialisasi bahasa saat aplikasi dibuka
  Future<LocaleService> init() async {
    final langCode = _prefs.getSavedLocale();
    _locale = AppLocale.values.firstWhere(
      (locale) => locale.languageCode == langCode,
      orElse: () => AppLocale.en,
    );
    if (LocaleSettings.currentLocale != _locale) {
      LocaleSettings.setLocale(_locale);
    }
    return this;
  }

  /// Update bahasa dan simpan ke SharedPreferences
  Future<void> updateLanguage(String languageCode) async {
    final newLocale = AppLocale.values.firstWhere(
      (locale) => locale.languageCode == languageCode,
      orElse: () => AppLocale.en,
    );
    _locale = newLocale;
    _prefs.setLocale(newLocale.languageCode);
    if (LocaleSettings.currentLocale != _locale) {
      LocaleSettings.setLocale(_locale);
    }
  }

  /// Cek apakah bahasa yang dipilih adalah Inggris
  bool isEnglish() => _locale.languageCode == 'en';
}
