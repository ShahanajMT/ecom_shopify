import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/screens/password/reset_password.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(TTexts.forgetPassword,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBwItems),
            Text(TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBwSections * 2),
            // TextFeild
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBwSections),
            // SubmitButton

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(TSizes.buttonRadius),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
                ),
                onPressed: () => Get.to(() => const ResetPasswordScreen()),
                child: const Text(TTexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
