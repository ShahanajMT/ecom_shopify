// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tstore/common/widgets/custom_shapes/container/t_primery_header_container.dart';
import 'package:tstore/common/widgets/custom_shapes/container/t_search_container.dart';
import 'package:tstore/common/widgets/layout/grid-layout.dart';
import 'package:tstore/common/widgets/product/product_card/product_card_vettical.dart';
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
            const TPrimeryHeaderWidget(
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
              child: Column(
                children: [
                  const TPramoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBwSections),
                  TGridLayout(itemCount: 10, itemBuilder: (BuildContext ctx, int index) { 
                    return const TProdictCardVertical();
                   },),
                  
                  
                ],
              ),
            )
            //Todo: -------- White Container Close ------ //
          ],
        ),
      ),
    );
  }
}




