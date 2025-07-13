import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/helpers/helper_fn.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  enabled: true,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBwInputFeilds),
              Expanded(
                child: TextFormField(
                  enabled: true,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: TSizes.spaceBwInputFeilds),
          // userName
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBwInputFeilds),
    
          // email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBwInputFeilds),
          // phoneNo
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBwInputFeilds),
          // password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TSizes.spaceBwInputFeilds),
          // terms&conditions checkbox
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: TSizes.spaceBwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${TTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${TTexts.privacyPolicy} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                            color: dark
                                ? TColors.white
                                : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? TColors.white
                                : TColors.primary,
                          ),
                    ),
                    TextSpan(
                        text: '${TTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: '${TTexts.termsOfUse} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                            color: dark
                                ? TColors.white
                                : TColors.primary,
                            decoration: TextDecoration.underline,
                            decorationColor: dark
                                ? TColors.white
                                : TColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBwSections),
          // signUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(TSizes.buttonRadius),
                ),
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.buttonHeight),
              ),
              onPressed: () {},
              child: const Text(TTexts.createAccount),
            ),
          ),
    
    
        ],
      ),
    );
  }
}