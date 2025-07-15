// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tstore/common/widgets/custom_shapes/container/t_primery_header_container.dart';

import 'package:tstore/features/shop/screens/home/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // ----- Blue Container ------- //
          TPrimeryHeaderWidget(
            child: Column(
              children: [
                //------AppBar
                THomeAppBar(),
                //------SearchBar
                //------Categories
              ],
            ),
          ),
          // --------- Close ---------- //
        ],
      ),
    ));
  }
}
