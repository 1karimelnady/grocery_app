import 'package:get/get.dart';
import 'package:grocery_app/features/home_feature/logic/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
