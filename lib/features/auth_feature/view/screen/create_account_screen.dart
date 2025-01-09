import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/component/custom_button.dart';
import 'package:grocery_app/component/text_field_component.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 1.sw,
                height: 290.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.createAccount),
                        fit: BoxFit.cover)),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 1.sw,
                decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r),
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Create your Account',
                          style: TextManager.font24BlackBold,
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManager.blackColor,
                          ),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.close,
                                color: ColorManager.whiteColor,
                                size: 30.sp,
                              )),
                        )
                      ],
                    ),
                    49.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                            child: TextFieldComponent(
                          hint: 'First Name',
                          borderColor: ColorManager.mainColor,
                        )),
                        19.horizontalSpace,
                        Expanded(
                            child: TextFieldComponent(
                                hint: 'Last Name',
                                borderColor: ColorManager.mainColor)),
                      ],
                    ),
                    16.verticalSpace,
                    TextFieldComponent(
                      hint: 'Email',
                      borderColor: ColorManager.mainColor,
                    ),
                    16.verticalSpace,
                    TextFieldComponent(
                      hint: 'Password',
                      borderColor: ColorManager.mainColor,
                      hasShowPasswordIcon: true,
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_off_outlined,
                              color: ColorManager.hintColor)),
                    ),
                    10.verticalSpace,
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'By tapping Sign up you accept all  ',
                              style: TextManager.font14HintMedium.copyWith(
                                color: Color(0xff303030),
                                fontFamily: 'Poppins',
                              )),
                          TextSpan(
                              text: 'Terms ',
                              style: TextManager.font16BlackRegular.copyWith(
                                color: ColorManager.mainColor,
                              )),
                          TextSpan(
                              text: 'and ',
                              style: TextManager.font16BlackRegular.copyWith(
                                color: Color(0xff303030),
                              )),
                          TextSpan(
                              text: 'condition',
                              style: TextManager.font16BlackRegular.copyWith(
                                color: ColorManager.mainColor,
                              )),
                        ],
                      ),
                    ),
                    16.verticalSpace,
                    CustomButton(
                      onTap: () {},
                      borderRadius: 30.r,
                      text: 'CREATE AN ACCOUNT',
                      backgroundColor: ColorManager.mainColor,
                      color: ColorManager.blackColor,
                    ),
                    16.verticalSpace,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
