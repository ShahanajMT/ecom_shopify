// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:tstore/common/widgets/images/t_tounded_imaged.dart';
import 'package:tstore/features/shop/controller/home_controller.dart';
import 'package:tstore/features/shop/screens/home/home.dart';
import 'package:tstore/utils/constants/colors.dart';
import 'package:tstore/utils/constants/image_string.dart';
import 'package:tstore/utils/constants/sizes.dart';

class TPramoSlider extends StatelessWidget {
  const TPramoSlider({
    Key? key,
    required this.banners,
  }) : super(key: key);

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2,
            initialPage: 2,
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageindicator(index),
          ),
          items:  banners.map((url) =>  TRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBwItems),
        Obx(
          ()=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                 TCircularContainer(
                  backgroudColor: controller.carouselCurrentIndex.value == i ? TColors.primary : TColors.grey,
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                )
            ],
          ),
        )
      ],
    );
  }
}
