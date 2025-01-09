import 'package:get/get.dart';
import 'package:grocery_app/features/onboarding_feature/logic/controller/onboarding_controller.dart';

class OnboardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(
      () => OnboardingController(),
    );
  }
}
