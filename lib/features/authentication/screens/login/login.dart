import 'package:flutter/material.dart';

import 'package:tstore/common/styles/spacing_styles.dart';
import 'package:tstore/common/widgets/login_signup/tFormDivider.dart';
import 'package:tstore/features/authentication/screens/login/widgets/tLoginForm.dart';
import 'package:tstore/features/authentication/screens/login/widgets/tLoginHeader.dart';
import 'package:tstore/common/widgets/login_signup/tSocialMediaButtons.dart';

import 'package:tstore/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              //--- Section 1: Logo and Title and Subtitle ---- //
              TLoginHeader(),
              // Form
              TLoginForm(),

              // Divider
              TFormDivider(),

              SizedBox(height: TSizes.spaceBwSections),

              // Social Media Login Buttons
              TSocialMediaButtons()
            ],
          ),
        ),
      ),
    );
  }
}
