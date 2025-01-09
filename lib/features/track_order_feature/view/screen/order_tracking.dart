import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/component/custom_button.dart';
import 'package:grocery_app/component/text_field_component.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';

class OrderTracking extends StatelessWidget {
  const OrderTracking({super.key});

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
                    " Order Tracking",
                    textAlign: TextAlign.center,
                    style: TextManager.font16BlackBold,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 32.h),
            Image.asset(AppImages.ordertrack),
            Stepper(
                controlsBuilder: (context, details) {
                  return SizedBox.shrink();
                },
                steps: [
                  Step(
                      stepStyle: StepStyle(
                        color: ColorManager.mainColor,
                      ),
                      title: Text(
                        "step 1 ",
                        style: TextManager.font20BlackMedium,
                      ),
                      content: Text(
                          "Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod",
                          style: TextManager.font14HintRegular.copyWith(
                            color: ColorManager.blackColor,
                          )),
                      isActive: true),
                  Step(
                      title:
                          Text("step 2 ", style: TextManager.font20BlackMedium),
                      content: Text(
                          "Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod",
                          style: TextManager.font14HintRegular.copyWith(
                            color: ColorManager.blackColor,
                          )),
                      isActive: false),
                  Step(
                      title:
                          Text("step 3 ", style: TextManager.font20BlackMedium),
                      content: Text(
                          "Lorem ipsum dolor sit amet, adipiscing elit, sed do eiusmod",
                          style: TextManager.font14HintRegular.copyWith(
                            color: ColorManager.blackColor,
                          )),
                      isActive: false),
                ]),
            Spacer(),
            CustomButton(
                color: ColorManager.blackColor,
                borderRadius: 32.r,
                text: "Submit Review",
                onTap: () {})
          ],
        ),
      ),
    );
  }
}
