import 'package:get/get.dart';
import 'package:flutter_get_example/second/second_controller.dart';

class SecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecondController());
  }
}
