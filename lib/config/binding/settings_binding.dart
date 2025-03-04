import 'package:get/get.dart';

import '../../src/modules/settings/controller/settings_controller.dart';


class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}