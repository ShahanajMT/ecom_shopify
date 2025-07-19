// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:tstore/common/widgets/custom_shapes/container/t_primery_header_container.dart';
import 'package:tstore/common/widgets/custom_shapes/container/t_search_container.dart';
import 'package:tstore/common/widgets/images/t_tounded_imaged.dart';
import 'package:tstore/common/widgets/text/section_heading.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tstore/features/shop/screens/home/widgets/pramo_slider.dart';
import 'package:tstore/utils/constants/image_string.dart';
import 'package:tstore/utils/constants/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //?TODO:----- Blue Container ------- //
            TPrimeryHeaderWidget(
              child: Column(
                children: [
                  //! ------AppBar----- !//
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBwSections),
                  //! ------SearchBar-----!//
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBwSections),
                  //! ------Categories------!//
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //? Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false),
                        SizedBox(height: TSizes.spaceBwItems),
                        //? Catehories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //ToDO --------- Close ---------- //
            //Todo: -------- White Container -------- //
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: TPramoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
            )
            //Todo: -------- White Container Close ------ //
          ],
        ),
      ),
    );
  }
}



class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    Key? key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    required this.margin,
    this.padding = 0,
    this.child,
    required this.backgroudColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final double padding;
  final Widget? child;
  final Color backgroudColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroudColor),
      child: child,
    );
  }
}
