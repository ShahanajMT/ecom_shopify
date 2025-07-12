// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:tstore/features/authentication/controller/onboarding_controller.dart';

import 'package:tstore/features/authentication/screens/onBoarding/widgets/onboarding.dart';
import 'package:tstore/features/authentication/screens/onBoarding/widgets/onboarding_dot_nav.dart';
import 'package:tstore/features/authentication/screens/onBoarding/widgets/onboarding_next.dart';
import 'package:tstore/features/authentication/screens/onBoarding/widgets/onboardingwidget.dart';
import 'package:tstore/utils/constants/image_string.dart';

import 'package:tstore/utils/constants/text_string.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scroll pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
                image: TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
                image: TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
                image: TImages.onBoardingImage3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),
          // dot navigation
          const OnBoardingDotNavigation(),
          // next button
          const OnBoardingNext()
        ],
      ),
    );
  }
}
