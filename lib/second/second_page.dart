import 'package:flutter/material.dart';
import 'package:flutter_get_example/routes.dart';
import 'package:flutter_get_example/second/second_controller.dart';
import 'package:flutter_get_example/shared/example_app_bar.dart';
import 'package:flutter_get_example/shared/example_button.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondController>(builder: (controller) {
      return Scaffold(
        appBar: const ExampleAppBar(title: "Second"),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.home),
          onPressed: () => Get.toNamed(Routes.homeRoute),
        ),
        body: Center(
          child: Column(children: [
            Obx(() => Text("Age: ${controller.secondModel.value.age}")),
            Obx(() =>
                Text("Property: ${controller.secondModel.value.property}")),
            ExampleButton(
                onPressed: () => controller.change(), text: "Increment")
          ]),
        ),
      );
    });
  }
}
