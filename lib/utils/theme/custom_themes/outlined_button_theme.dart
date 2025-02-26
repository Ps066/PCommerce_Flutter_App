import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyAppColors.dark,
      side: const BorderSide(color: MyAppColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: MyAppColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: MyAppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MyAppSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: MyAppColors.light,
      side: const BorderSide(color: MyAppColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: MyAppColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: MyAppSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MyAppSizes.buttonRadius)),
    ),
  );
}
