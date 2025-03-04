import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../repository/shared_pref.dart';
import '../controller/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = SharedPrefService.to;
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("This is Settings View"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          prefs.toggleTheme();
        },
        child: Icon(
          prefs.isDarkMode.isFalse ? Icons.brightness_1 : Icons.dark_mode,
        ),
      ),
    );
  }
}
