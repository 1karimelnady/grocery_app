import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grocery_app/core/constants/app_images_path.dart';

class HomeController extends GetxController {
  RxInt currentPage = RxInt(1);
  ScrollController scrollController = ScrollController();
  TextEditingController searchController = TextEditingController();
  RxInt currentCarouselIndex = 0.obs;
  late Timer _timer;
  CarouselSliderController carouselController = CarouselSliderController();

  void updateCarousel(int index) {
    currentCarouselIndex.value = index;
    update();
  }

  List catogries = [
    AppImages.categories1,
    AppImages.categories2,
    AppImages.categories3,
  ];
  List sliders = [
    AppImages.slider1,
    AppImages.slider2,
  ];

  // String imageController = image;

  @override
  void onInit() async {
    _timer = Timer.periodic(const Duration(seconds: 10), (_) {
      carouselController.nextPage();
      updateCarousel(currentCarouselIndex.value + 1);
    });
    super.onInit();
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
