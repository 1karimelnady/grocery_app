import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery_app/component/bottom_nav_bar_widget.dart';
import 'package:grocery_app/component/custom_button.dart';
import 'package:grocery_app/component/custom_image_handler.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';
import 'package:grocery_app/core/theme/color_manager.dart';
import 'package:grocery_app/core/theme/text_manager.dart';
import 'package:grocery_app/features/home_feature/logic/controller/home_controller.dart';
import 'package:grocery_app/features/welcome_screen.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              40.verticalSpace,
              Text("Good Morning",
                  style: TextManager.font14HintMedium
                      .copyWith(color: const Color(0xff5F5F5F))),
              4.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Karim Elnady",
                    style: TextManager.font20BlackMedium,
                  ),
                  Image.asset(AppImages.profile)
                ],
              ),
              CarouselSlider(
                items: controller.sliders
                    .map((e) => CustomImageHandler(e))
                    .toList(),
                options: CarouselOptions(
                  height: 200,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, reason) {},
                  scrollDirection: Axis.horizontal,
                ),
              ),
              30.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",
                      style: TextManager.font18BlackBold.copyWith(
                        fontWeight: FontWeight.w600,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ))
                ],
              ),
              13.verticalSpace,
              SizedBox(
                  height: 100.h,
                  child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) => 16.horizontalSpace,
                      itemCount: controller.catogries.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 93,
                          decoration: BoxDecoration(
                              color: ColorManager.whiteColor,
                              borderRadius: BorderRadius.circular(18)),
                          child: Image.asset(
                            controller.catogries[index],
                          ),
                        );
                      })),
              30.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending Deals",
                      style: TextManager.font18BlackBold.copyWith(
                        fontWeight: FontWeight.w600,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                      ))
                ],
              ),
              13.verticalSpace,
              SingleChildScrollView(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 200.h,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16.h,
                    crossAxisSpacing: 17.w,
                  ),
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Stack(
                    children: [
                      const Image(image: AssetImage(AppImages.trending)),
                      const Positioned(
                          top: 15,
                          left: 15,
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xffFF2E6C),
                            size: 30,
                          )),
                      Positioned(
                          bottom: 41,
                          right: 20,
                          left: 14,
                          child: Text("Avocado",
                              style: TextManager.font18BlackBold.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.whiteColor))),
                      Positioned(
                          bottom: 14,
                          right: 20,
                          left: 14,
                          child: Text("\$6.7",
                              style: TextManager.font18BlackBold.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: ColorManager.whiteColor))),
                    ],
                  ),
                ),
              ),
              40.verticalSpace,
              CustomButton(
                  bordereColor: ColorManager.blackColor,
                  color: ColorManager.whiteColor,
                  borderRadius: 32.r,
                  backgroundColor: ColorManager.blackColor,
                  text: 'More',
                  onTap: () {})
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavBarWidget(0),
    );
  }
}
