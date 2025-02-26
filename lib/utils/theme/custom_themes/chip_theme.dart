import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: MyAppColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: MyAppColors.black),
    selectedColor: MyAppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MyAppColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: MyAppColors.darkerGrey,
    labelStyle: TextStyle(color: MyAppColors.white),
    selectedColor: MyAppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: MyAppColors.white,
  );
}
