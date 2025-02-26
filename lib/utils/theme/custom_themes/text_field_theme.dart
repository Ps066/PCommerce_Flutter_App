import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: MyAppColors.darkGrey,
    suffixIconColor: MyAppColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: MyAppSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: MyAppSizes.fontSizeMd, color: MyAppColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: MyAppSizes.fontSizeSm, color: MyAppColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: MyAppColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MyAppColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: MyAppColors.darkGrey,
    suffixIconColor: MyAppColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: MyAppSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: MyAppSizes.fontSizeMd, color: MyAppColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: MyAppSizes.fontSizeSm, color: MyAppColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: MyAppColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: MyAppColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(MyAppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: MyAppColors.warning),
    ),
  );
}
