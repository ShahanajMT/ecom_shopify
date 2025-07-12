import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  // variables
  final pageController = PageController();
  Rx<int> currentIndex = 0.obs;

  // updateCurrent index when variable changes
  void updatePageIndicator(index) => currentIndex.value = index;

  // jump to specific dot selector page
  void dotNavigationClick(index) {
    pageController.jumpToPage(index);
    updatePageIndicator(index);
  }

  // update the current index and jump to next page
  void nextPage() {
    if (currentIndex.value < 2) {
      currentIndex.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      skipPage();
    }
  }

  // update the current index and jump to last page
  void skipPage() {
    currentIndex.value = 2;
    pageController.jumpToPage(2);
  }
}