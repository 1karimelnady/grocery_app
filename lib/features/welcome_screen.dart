import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/component/page_indecator.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/font_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';
import 'package:grocery_app/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.onBoarding);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/splash.svg'),
            38.verticalSpace,
            Text(
              "Fresh Fruits",
              style: TextManager.font16BlackBold.copyWith(
                  color: ColorManager.whiteColor,
                  fontSize: 38.sp,
                  fontFamily: FontConstants.fontFamily1),
            ),
          ],
        ),
      ),
    );
  }
}
