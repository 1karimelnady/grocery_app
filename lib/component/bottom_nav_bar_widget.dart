import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/routes/app_routes.dart';

BottomNavigationBar buildBottomNavBarWidget(int currentIndex) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: (index) {
      switch (index) {
        case 0:
          Get.offNamed(Routes.home);
          break;
        case 1:
          Get.offNamed(Routes.categories);
          break;
        case 2:
          Get.offNamed(Routes.cart);
          break;
        case 3:
          Get.offNamed(Routes.favourite);
          break;
      }
    },
    showUnselectedLabels: true,
    selectedFontSize: 12,
    unselectedFontSize: 12,
    iconSize: 20,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: ColorManager.offwhiteGrey,
    selectedItemColor: ColorManager.mainColor,
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(
          AppImages.home,
          color: currentIndex == 0
              ? ColorManager.mainColor
              : ColorManager.offwhiteGrey,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          AppImages.categoriesNav,
          color: currentIndex == 1
              ? ColorManager.mainColor
              : ColorManager.offwhiteGrey,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Badge.count(
            count: 0,
            textColor: currentIndex == 2
                ? ColorManager.mainColor
                : ColorManager.offwhiteGrey,
            backgroundColor: currentIndex == 2
                ? ColorManager.mainColor
                : ColorManager.offwhiteGrey,
            child: Image.asset(
              AppImages.cartNav,
              color: currentIndex == 2
                  ? ColorManager.mainColor
                  : ColorManager.offwhiteGrey,
            )),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          AppImages.fav,
          color: currentIndex == 3
              ? ColorManager.mainColor
              : ColorManager.offwhiteGrey,
        ),
        label: '',
      ),
    ],
  );
}
