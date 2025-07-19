// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tstore/common/widgets/custom_shapes/container/t_primery_header_container.dart';
import 'package:tstore/common/widgets/custom_shapes/container/t_search_container.dart';
import 'package:tstore/common/widgets/text/section_heading.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:tstore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:tstore/utils/constants/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
          ],
        ),
      ),
    );
  }
}
