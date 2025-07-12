import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/text_string.dart';
import 'package:tstore/utils/helpers/helper_fn.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: dark ? TColors.darkergrey : TColors.lightgrey,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          TTexts.orSignInWith.capitalize!,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Flexible(
          child: Divider(
            thickness: 0.5,
            color: dark ? TColors.darkergrey : TColors.lightgrey,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}