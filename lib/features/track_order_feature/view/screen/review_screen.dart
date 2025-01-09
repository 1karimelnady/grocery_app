import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/component/custom_button.dart';
import 'package:grocery_app/component/custom_rating_star.dart';
import 'package:grocery_app/component/text_field_component.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                    " Write Reviews",
                    textAlign: TextAlign.center,
                    style: TextManager.font16BlackBold,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 32.h),
            Text(
              'Tell Us to Improve',
              style: TextManager.font16BlackBold,
            ),
            SizedBox(height: 16.h),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
              textAlign: TextAlign.center,
              style: TextManager.font14HintBold.copyWith(
                  color: ColorManager.blackColor, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 32.h),
            Text(
              '5.0',
              style: TextManager.font32BlackBold.copyWith(fontSize: 50),
            ),
            SizedBox(height: 16.h),
            RatingStar(
              onRatingChanged: (c) {},
              starCount: 5,
              iconSize: 40,
            ),
            33.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let us know what you think",
                  style: TextManager.font14BlackBold.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.verticalSpace,
                TextFieldComponent(
                  maxlines: 10,
                  borderColor: ColorManager.mainColor,
                  hint: "Write your review here",
                )
              ],
            ),
            Spacer(),
            CustomButton(
                color: ColorManager.blackColor,
                borderRadius: 32.r,
                text: "Done",
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
