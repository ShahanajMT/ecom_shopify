import 'package:flutter/material.dart';

import 'package:tstore/common/widgets/tFormDivider.dart';
import 'package:tstore/common/widgets/tSocialMediaButtons.dart';

import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/constants/text_string.dart';


import 'widget/tSignupform.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBwSections),
              //Form
              const TSignUpForm(),
              const SizedBox(height: TSizes.spaceBwSections),
              //Divider
              const TFormDivider(),
              const SizedBox(height: TSizes.spaceBwSections),
              // social media
              const TSocialMediaButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

