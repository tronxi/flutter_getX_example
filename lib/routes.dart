import 'package:flutter_get_example/home/home_binding.dart';
import 'package:flutter_get_example/home/home_page.dart';
import 'package:flutter_get_example/second/second_binding.dart';
import 'package:flutter_get_example/second/second_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String homeRoute = "/home";
  static const String secondRoute = "/second";
  static appRoutes() => [
        GetPage(
            name: homeRoute,
            page: () => const HomePage(),
            binding: HomeBinding(),
            transition: Transition.noTransition,
            middlewares: [MyMiddleware()]),
        GetPage(
            name: secondRoute,
            page: () => const SecondPage(),
            binding: SecondBinding(),
            transition: Transition.noTransition,
            middlewares: [MyMiddleware()])
      ];
}

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
