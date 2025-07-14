import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/styles/spacing_styles.dart';
import 'package:tstore/utils/constants/image_string.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/helpers/helper_fn.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(Iconsax.close_circle))
        ],
      ),
      body:  Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Image
              Image(
                  image: const  AssetImage(TImages.onBoardingImage2),
                  width: THelperFunction.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBwSections),

              // Title & Subtitle
              Text(TTexts.changePasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),

              Text(TTexts.changePasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),

              // Buttons

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(TSizes.buttonRadius),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: TSizes.buttonHeight),
                  ),
                  onPressed: () {},
                  child: const Text(TTexts.done),
                ),
              ),
              const SizedBox(height: TSizes.spaceBwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(TTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
    );
  }
}