import 'package:get/get.dart';
import 'package:grocery_app/features/categories_features/logic/categories_controller.dart';

class CategoriesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesController());
  }
}
