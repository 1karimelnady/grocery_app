import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:grocery_app/component/bottom_nav_bar_widget.dart';
import 'package:grocery_app/component/page_indecator.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';
import 'package:grocery_app/features/categories_features/logic/categories_controller.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorManager.whiteColor,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
        title: Text(
          'Categories',
          style: TextManager.font20BlackMedium,
        ),
      ),
      body: GetBuilder<CategoriesController>(builder: (controller) {
        return GridView.builder(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => controller.toggleCategorySelection(index),
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    color: controller.selectedCategories[index]
                        ? ColorManager.mainColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(28.r)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.categories1,
                      color: controller.selectedCategories[index]
                          ? ColorManager.blackColor
                          : ColorManager.mainColor,
                    ),
                    10.verticalSpace,
                    Text(
                      "Fruits",
                      style: TextManager.font16BlackBold.copyWith(
                          color: controller.selectedCategories[index]
                              ? ColorManager.blackColor
                              : ColorManager.mainColor),
                    ),
                    Text(
                      "87 items",
                      style: TextManager.font14HintMedium.copyWith(
                          color: controller.selectedCategories[index]
                              ? ColorManager.blackColor
                              : ColorManager.mainColor),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 20,
          shrinkWrap: true,
        );
      }),
      bottomNavigationBar: buildBottomNavBarWidget(1),
    );
  }
}
