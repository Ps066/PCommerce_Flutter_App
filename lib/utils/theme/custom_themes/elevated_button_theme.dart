import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class PElevatedButtonTheme {
  PElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyAppColors.light,
      backgroundColor: MyAppColors.primary,
      disabledForegroundColor: MyAppColors.darkGrey,
      disabledBackgroundColor: MyAppColors.buttonDisabled,
      side: const BorderSide(color: MyAppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: MyAppSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: MyAppColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MyAppSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: MyAppColors.light,
      backgroundColor: MyAppColors.primary,
      disabledForegroundColor: MyAppColors.darkGrey,
      disabledBackgroundColor: MyAppColors.darkerGrey,
      side: const BorderSide(color: MyAppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: MyAppSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: MyAppColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(MyAppSizes.buttonRadius)),
    ),
  );
}
