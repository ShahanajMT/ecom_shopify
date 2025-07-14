import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/features/authentication/screens/password/forget_password.dart';
import 'package:tstore/features/authentication/screens/register/register.dart';
import 'package:tstore/navigation_menu.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBwSections),
        child: Column(
          children: [
            // Email Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: TSizes.spaceBwInputFeilds),
            // Password Field
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Iconsax.eye_slash)),
              obscureText: true,
            ),
            const SizedBox(height: TSizes.spaceBwInputFeilds / 2),
            // Forgot Password and Remember Me
            Row(
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                const Spacer(),
                // Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBwInputFeilds),
            // Login Button
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
                onPressed: () => Get.to(
                  () => const NavigationMenu(),
                ),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBwItems),
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(const SignUpScreen()),
                  child: const Text(TTexts.createAccount)),
            ),
            const SizedBox(height: TSizes.spaceBwSections),
          ],
        ),
      ),
    );
  }
}
