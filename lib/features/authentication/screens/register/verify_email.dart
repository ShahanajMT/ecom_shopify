import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/common/widgets/success_screen/success_screen.dart';
import 'package:tstore/features/authentication/screens/login/login.dart';
import 'package:tstore/utils/constants/image_string.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/helpers/helper_fn.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(Icons.close_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                  image: const AssetImage(TImages.staticSuccessIllustrtion1),
                  width: THelperFunction.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBwSections),

              // Title & Subtitle
              Text(TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),
              Text('shanu@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBwItems),
              Text(TTexts.confirmEmailSubTitle,
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
                  onPressed: () => Get.to(
                    SuccessScreen(
                      image: TImages.staticSuccessIllustrtion1,
                      title: TTexts.yourAccountCreatedTitle,
                      subtitle: TTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(TTexts.tContinue),
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
      ),
    );
  }
}
