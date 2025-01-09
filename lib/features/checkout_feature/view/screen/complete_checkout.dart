import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:grocery_app/component/custom_button.dart';
import 'package:grocery_app/component/custom_check_box.dart';
import 'package:grocery_app/component/custom_dropdown_form_field.dart';
import 'package:grocery_app/component/page_indecator.dart';
import 'package:grocery_app/component/text_field_component.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';

class CompleteCheckout extends StatelessWidget {
  const CompleteCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorManager.whiteColor,
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
        title: Text(
          'Checkout',
          style: TextManager.font20BlackMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Card Holder Name",
                style: TextManager.font14BlackBold
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              10.verticalSpace,
              TextFieldComponent(
                hint: '',
                borderColor: Color(0xffCACACA),
              ),
              20.verticalSpace,
              Text(
                "Card Number",
                style: TextManager.font14BlackBold
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              10.verticalSpace,
              TextFieldComponent(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                hint: '',
                borderColor: Color(0xffCACACA),
              ),
              20.verticalSpace,
              Text(
                "Month/Year",
                style: TextManager.font14BlackBold
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              10.verticalSpace,
              TextFieldComponent(
                hint: '',
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                borderColor: Color(0xffCACACA),
              ),
              20.verticalSpace,
              Text(
                "CVV",
                style: TextManager.font14BlackBold
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              10.verticalSpace,
              TextFieldComponent(
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                hint: '',
                borderColor: Color(0xffCACACA),
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Zip code",
                          style: TextManager.font14BlackBold
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        10.verticalSpace,
                        TextFieldComponent(
                          hint: 'Enter here',
                          borderColor: Color(0xffCACACA),
                        ),
                      ],
                    ),
                  ),
                  20.horizontalSpace,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "City",
                          style: TextManager.font14BlackBold
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        10.verticalSpace,
                        TextFieldComponent(
                          hint: 'Enter here',
                          borderColor: Color(0xffCACACA),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              CustomDropDownFormField(
                  hintText: 'Choose your country',
                  items: [
                    DropdownMenuItem(
                      child: Text("Egypt"),
                      value: "Egypt",
                    ),
                    DropdownMenuItem(
                      child: Text("saudi Arabia"),
                      value: "saudi Arabia",
                    ),
                  ],
                  onChanged: (_) {}),
              20.verticalSpace,
              Row(
                children: [
                  Container(
                      height: 35.h,
                      width: 35.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.r),
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: ColorManager.greenColor,
                          )),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: ColorManager.greenColor,
                        ),
                      )),
                  16.horizontalSpace,
                  Text(
                    "Save shipping address",
                    style: TextManager.font16BlackMedium
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              20.verticalSpace,
              CustomButton(
                onTap: () {},
                borderRadius: 30.r,
                text: 'Next',
                backgroundColor: ColorManager.mainColor,
                color: ColorManager.blackColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
