import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'config/locale/generated/translations.g.dart';
import 'config/locale/localization_service.dart';
import 'src/repository/shared_pref.dart';
import 'utils/notifications.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  //await FcmHelper.initFcm();
  await Get.putAsync(() => SharedPrefService.init());
  await Get.putAsync(() => LocaleService().init());

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
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              FilledButton(
                onPressed: () async {
                  LocaleService.to.updateLanguage("id");
                  //print(LocaleService().locale);
                },
                child: Text(context.t.loading),
              ),
              FilledButton(
                onPressed: () async {
                  LocaleService.to.updateLanguage("en");
                  //print(LocaleService().locale);
                },
                child: Text(context.t.goodMorning),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
