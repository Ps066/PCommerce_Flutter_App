import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_ecommerce/utils/theme/custom_themes/text_theme.dart';

class PAppTheme {
  PAppTheme._(); 

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,    
    fontFamily: 'Poppins',
    brightness: Brightness.light,   // this sets the theme as light mode 
    primaryColor: Colors.blue,    
    scaffoldBackgroundColor: Colors.white,
    textTheme: PTextTheme.lightTextTheme,    // custome light text theme
    elevatedButtonTheme: PElevatedButtonTheme.lightElevatedButtonTheme
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,    
    fontFamily: 'Poppins',
    brightness: Brightness.dark,   // this sets the theme as dark mode 
    primaryColor: Colors.blue,    
    scaffoldBackgroundColor: Colors.black,
    textTheme: PTextTheme.darkTextTheme,    // custome light text theme
    elevatedButtonTheme: PElevatedButtonTheme.darkElevatedButtonTheme
  );
}