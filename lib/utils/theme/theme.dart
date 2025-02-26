import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/text_theme.dart';

class PAppTheme {
  PAppTheme._(); 

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,    
    fontFamily: 'Poppins',
    disabledColor: MyAppColors.grey,
    brightness: Brightness.light,   // this sets the theme as light mode 
    primaryColor: MyAppColors.primary,    
    scaffoldBackgroundColor: MyAppColors.white,
    textTheme: PTextTheme.lightTextTheme,    // custome light text theme
    elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,    
    fontFamily: 'Poppins',
    disabledColor: MyAppColors.grey,
    brightness: Brightness.dark,   // this sets the theme as dark mode 
    primaryColor: MyAppColors.primary,    
    scaffoldBackgroundColor: MyAppColors.black,
    textTheme: PTextTheme.darkTextTheme,    // custome light text theme
    elevatedButtonTheme: PElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}

