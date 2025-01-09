import 'package:get/get.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/localization/app_strings.dart';

class OnboardingController extends GetxController {
  RxInt currentIndex = 0.obs;

  List onBoardingImages = [
    AppImages.onboarding1,
    AppImages.onboarding2,
    AppImages.onboarding3,
  ];
  List onBoardingTexts = [
    {
      "title": AppStrings.onboarding_title_1.tr,
      "stitle": AppStrings.onboarding_title_s_1.tr,
      "subtitle": AppStrings.onboarding_subtitle_1.tr
    },
    {
      "title": AppStrings.onboarding_title_2.tr,
      "stitle": '',
      "subtitle": AppStrings.onboarding_subtitle_2.tr
    },
    {
      "title": AppStrings.onboarding_title_3.tr,
      "stitle": '',
      "subtitle": AppStrings.onboarding_subtitle_3.tr
    },
  ];
}
