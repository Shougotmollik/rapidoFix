import 'package:get/get.dart';
import 'package:rapidofix/controller/home_controller.dart';
import 'package:rapidofix/controller/nav_bar_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(() => NavBarController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
