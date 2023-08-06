import 'package:flutter/material.dart';
import 'package:flutter_get_example/home/home_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var homeModel = HomeModel(age: 10, name: "").obs;
  final TextEditingController nameController = TextEditingController();

  incrementAge() {
    homeModel.update((val) {
      val?.age++;
    });
  }

  changeName(String name) {
    homeModel.update((val) {
      val?.name = name;
    });
  }

}