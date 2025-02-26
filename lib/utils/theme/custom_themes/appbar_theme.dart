import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class TAppBarTheme{
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MyAppColors.black, size: MyAppSizes.iconMd),
    actionsIconTheme: IconThemeData(color: MyAppColors.black, size: MyAppSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: MyAppColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: MyAppColors.black, size: MyAppSizes.iconMd),
    actionsIconTheme: IconThemeData(color: MyAppColors.white, size: MyAppSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: MyAppColors.white),
  );
}