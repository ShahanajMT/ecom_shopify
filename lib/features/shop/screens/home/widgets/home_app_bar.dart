import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/appBar/appBar.dart';
import 'package:tstore/common/widgets/product/cart/counter_icon_cart.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/text_string.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey)),
          Text(TTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: TColors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(onPressed: () {}, iconColor: TColors.white),
      ],
    );
  }
}