import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/controller/onboarding_controller.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/device/device_utility.dart';
import 'package:tstore/utils/helpers/helper_fn.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(), 
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.black,
        ),
        onPressed: controller.nextPage,
        child: const Icon(Iconsax.arrow_right_1),
      ),
    );
  }
}