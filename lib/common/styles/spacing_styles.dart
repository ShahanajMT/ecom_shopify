import 'package:flutter/widgets.dart';

import 'package:tstore/utils/constants/sizes.dart';

class TSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsetsGeometry.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}