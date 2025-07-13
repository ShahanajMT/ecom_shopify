import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_string.dart';
import 'package:tstore/utils/constants/sizes.dart' show TSizes;

class TSocialMediaButtons extends StatelessWidget {
  const TSocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: TSizes.iconMd,
              width: TSizes.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: TSizes.iconMd,
              width: TSizes.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}