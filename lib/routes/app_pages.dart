import 'package:get/get.dart';
import 'package:grocery_app/features/auth_feature/view/screen/create_account_screen.dart';
import 'package:grocery_app/features/auth_feature/view/screen/sign_in_screen.dart';
import 'package:grocery_app/features/cart_feature/view/screen/cart_screen.dart';
import 'package:grocery_app/features/categories_features/logic/categories_binding.dart';
import 'package:grocery_app/features/categories_features/view/screen/categories_screen.dart';
import 'package:grocery_app/features/favourite_feature/view/screen/favourite_screen.dart';
import 'package:grocery_app/features/home_feature/logic/binding/home_binding.dart';
import 'package:grocery_app/features/home_feature/view/screen/home_screen.dart';
import 'package:grocery_app/features/onboarding_feature/logic/binding/onboarding_binding.dart';
import 'package:grocery_app/features/onboarding_feature/view/screen/onboarding.dart';
import 'package:grocery_app/features/track_order_feature/view/screen/order_process.dart';
import 'package:grocery_app/features/track_order_feature/view/screen/order_tracking.dart';
import 'package:grocery_app/features/track_order_feature/view/screen/review_screen.dart';

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
        GetPage(
            name: Routes.categories,
            page: () => const Categories(),
            binding: CategoriesBinding()),
        GetPage(
          name: Routes.cart,
          page: () => const CartScreen(),
        ),
        GetPage(
          name: Routes.favourite,
          page: () => const FavouriteScreen(),
        ),
        GetPage(
          name: Routes.orderProcess,
          page: () => OrderProcessScreen(),
        ),
        GetPage(
          name: Routes.orderTrack,
          page: () => OrderTracking(),
        ),
        GetPage(
          name: Routes.rating,
          page: () => Review(),
        ),
      ];
}
