import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

class PSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: MyAppSizes.appBarHeight,
    left: MyAppSizes.defaultSpace,
    bottom: MyAppSizes.defaultSpace,
    right: MyAppSizes.defaultSpace,
  );
}
