import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/settings');
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addLocation(controller.dummy);
        },
      ),
      body: Center(
        child: Obx(
          () => ListView.builder(
            itemCount: controller.loc.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  controller.loc[index].name,
                ),
                subtitle: Text(
                  controller.loc[index].altName,
                ),
                trailing: IconButton(
                  onPressed: () {
                    controller.deleteLocation(controller.loc[index].id);
                  },
                  icon: const Icon(Icons.delete),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
