import 'package:get/get.dart';

class CategoriesController extends GetxController {
  List<bool> selectedCategories = List.generate(20, (index) => false);

  void toggleCategorySelection(int index) {
    selectedCategories[index] = !selectedCategories[index];
    update();
  }
}
