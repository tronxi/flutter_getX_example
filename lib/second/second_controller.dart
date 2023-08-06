import 'package:flutter_get_example/second/second_model.dart';
import 'package:get/get.dart';

class SecondController extends GetxController{
  var secondModel = SecondModel(age: 0, property: "Empty property").obs;
  var count = 0.obs;
  increment() => count++;
  change() {
    secondModel.value.age++;
    secondModel.value.property = "changed";
    secondModel.refresh();
  }

}