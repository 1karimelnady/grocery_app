import 'package:get/get.dart';
import 'package:grocery_app/features/auth_feature/view/screen/create_account_screen.dart';
import 'package:grocery_app/features/auth_feature/view/screen/sign_in_screen.dart';
import 'package:grocery_app/features/home_feature/logic/binding/home_binding.dart';
import 'package:grocery_app/features/home_feature/view/screen/home_screen.dart';
import 'package:grocery_app/features/onboarding_feature/logic/binding/onboarding_binding.dart';
import 'package:grocery_app/features/onboarding_feature/view/screen/onboarding.dart';
import 'package:grocery_app/features/welcome_screen.dart';
import 'package:grocery_app/routes/app_routes.dart';

class AppPages {
  static String initial = Routes.welcome;

  appPages() => [
        GetPage(
          name: Routes.welcome,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: Routes.onBoarding,
          page: () => const Onboarding(),
          binding: OnboardingBinding(),
        ),
        GetPage(
          name: Routes.createAccount,
          page: () => const CreateAccountScreen(),
        ),
        GetPage(
          name: Routes.signIn,
          page: () => const SignInScreen(),
        ),
        GetPage(
          name: Routes.home,
          page: () => const HomeScreen(),
          binding: HomeBinding(),
        ),
      ];
}
