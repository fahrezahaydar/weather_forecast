import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'config/locale/generated/translations.g.dart';
import 'config/locale/localization_service.dart';
import 'config/routes/app_pages.dart';
import 'config/theme/theme.dart';
import 'src/repository/objectbox_service.dart';
import 'src/repository/shared_pref.dart';
import 'src/services/network/api_client.dart';
import 'utils/notifications.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  //await FcmHelper.initFcm();
  await Get.putAsync(() => SharedPrefService.init());
  await Get.putAsync(() => LocaleService().init());
  await Get.putAsync(() async => ApiClient());
  await OBService.init();

  await AwesomeNotificationsHelper.init();
  runApp(
    TranslationProvider(
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      fallbackLocale: const Locale('en'),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: SharedPrefService.to.theme,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
