import 'package:flutter/material.dart';
import 'package:flutter_get_example/shared/example_app_bar.dart';
import 'package:flutter_get_example/shared/example_button.dart';
import 'package:get/get.dart';

import 'package:flutter_get_example/home/home_controller.dart';
import 'package:flutter_get_example/routes.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ExampleAppBar(title: "Home"),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.devices_other),
          onPressed: () => Get.toNamed(Routes.secondRoute),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text("Age: ${controller.homeModel.value.age}")),
                Obx(() => Text("Name: ${controller.homeModel.value.name}")),
                const Other(),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: controller.nameController,
                  ),
                ),
                ExampleButton(
                    text: "Change Name",
                    onPressed: () {
                      controller.changeName(controller.nameController.text);
                      controller.nameController.clear();
                    }),
                ExampleButton(
                    text: "Increment",
                    onPressed: () => controller.incrementAge()),
              ]),
        ),
      );
  }
}

class Other extends StatelessWidget {
  const Other({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Obx(() => Text("${controller.homeModel.value.age}"));
    });
  }
}

