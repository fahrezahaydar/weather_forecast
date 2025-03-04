import 'package:get/get.dart';

import '../../src/modules/home/view/home_view.dart';
import '../../src/modules/settings/view/settings_view.dart';
import '../binding/home_binding.dart';
import '../binding/settings_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
  ];
}
