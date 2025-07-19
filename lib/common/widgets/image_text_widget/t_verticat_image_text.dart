import 'package:flutter/material.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/sizes.dart';
import 'package:tstore/utils/helpers/helper_fn.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroudColor = TColors.white,
    required this.onTap,
  });

  final String? image, title;
  final Color textColor;
  final Color? backgroudColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(TSizes.sm),
            decoration: BoxDecoration(
              color: backgroudColor ?? (dark ? TColors.black : TColors.white),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image(
                image: AssetImage(image!),
                color: (dark ? TColors.dark : TColors.light),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: TSizes.spaceBwItems / 2),
          //Text
          SizedBox(
            width: 55,
            child: Text(
              title!,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}