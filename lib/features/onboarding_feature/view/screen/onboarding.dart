import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:grocery_app/component/custom_button.dart';
import 'package:grocery_app/component/custom_image_handler.dart';
import 'package:grocery_app/component/page_indecator.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/font_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';
import 'package:grocery_app/features/onboarding_feature/logic/controller/onboarding_controller.dart';
import 'package:grocery_app/routes/app_routes.dart';

class Onboarding extends GetView<OnboardingController> {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 100,
        leading: Obx(
          () => controller.currentIndex.value == 0
              ? Container()
              : IconButton(
                  onPressed: () {
                    controller.currentIndex.value--;
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: ColorManager.mainColor,
                    size: 30,
                  ),
                ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => CustomImageHandler(
                controller.onBoardingImages[controller.currentIndex.value],
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Obx(
                    () => controller.currentIndex.value == 0
                        ? Column(
                            children: [
                              Text(
                                controller.onBoardingTexts[
                                    controller.currentIndex.value]["title"],
                                style: TextManager.font24BlackBold.copyWith(
                                    fontFamily: FontConstants.fontFamily2),
                              ),
                              Text(
                                controller.onBoardingTexts[
                                    controller.currentIndex.value]["stitle"],
                                style: TextManager.font18BlackBold.copyWith(
                                    fontFamily: FontConstants.fontFamily2),
                              ),
                            ],
                          )
                        : Text(
                            controller.onBoardingTexts[
                                controller.currentIndex.value]["title"],
                            style: TextManager.font24BlackBold.copyWith(
                                fontFamily: FontConstants.fontFamily2),
                          ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => Text(
                      controller.onBoardingTexts[controller.currentIndex.value]
                          ["subtitle"],
                      style: TextManager.font14BlackBold
                          .copyWith(fontFamily: FontConstants.fontFamily2)
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Obx(
                        () => Container(
                          width: 23,
                          height: 6,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: controller.currentIndex.value == index
                                ? ColorManager.greenColor
                                : ColorManager.secandryColor,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Obx(() {
                    if (controller.currentIndex.value == 2) {
                      return Column(
                        children: [
                          CustomButton(
                            text: 'CREATE AN ACCOUNT',
                            onTap: () {
                              Get.toNamed(Routes.createAccount);
                            },
                            fontSize: 16.sp,
                            color: ColorManager.whiteColor,
                            borderRadius: 30.r,
                            bordereColor: ColorManager.blackColor,
                            backgroundColor: ColorManager.blackColor,
                          ),
                          SizedBox(height: 18.h),
                          CustomButton(
                            text: 'LOGIN',
                            onTap: () {
                              Get.toNamed(Routes.signIn);
                            },
                            borderRadius: 30.r,
                            bordereColor: ColorManager.blackColor,
                            color: ColorManager.blackColor,
                            backgroundColor: ColorManager.whiteColor,
                          ),
                        ],
                      );
                    }
                    return CustomButton(
                      borderRadius: 30,
                      text: 'NEXT',
                      color: ColorManager.blackColor,
                      onTap: () {
                        if (controller.currentIndex.value == 2) {
                          Get.offNamed(Routes.createAccount);
                        } else {
                          controller.currentIndex.value++;
                        }
                      },
                    );
                  }),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
