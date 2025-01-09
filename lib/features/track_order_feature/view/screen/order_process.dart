import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/component/custom_button.dart';
import 'package:grocery_app/component/text_field_component.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';

class OrderProcessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            30.verticalSpace,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ColorManager.mainColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close,
                    color: ColorManager.whiteColor,
                  ),
                ),
                Spacer(),
                Center(
                  child: Text(
                    " Thank You",
                    textAlign: TextAlign.center,
                    style: TextManager.font16BlackBold,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 32.h),
            Image.asset(AppImages.onboarding3),
            100.verticalSpace,
            Text(
              'Your Order in process',
              style: TextManager.font16BlackBold,
            ),
            SizedBox(height: 16.h),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
              textAlign: TextAlign.center,
              style: TextManager.font14HintBold.copyWith(
                  color: ColorManager.blackColor, fontWeight: FontWeight.w400),
            ),
            Spacer(),
            CustomButton(
                color: ColorManager.blackColor,
                borderRadius: 32.r,
                text: "TRACK YOUR ORDER",
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
