import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/image_text_widget/t_verticat_image_text.dart';
import 'package:tstore/utils/constants/image_string.dart';
import 'package:tstore/utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoesIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
        separatorBuilder: (_, index) =>
            const SizedBox(width: TSizes.sm),
      ),
    );
  }
}