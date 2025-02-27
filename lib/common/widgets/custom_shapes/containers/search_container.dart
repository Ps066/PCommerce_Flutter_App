import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/device/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, required this.text, this.icon=Iconsax.search_normal, this.showBackground=true, this.showBorder=true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: MyAppSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(MyAppSizes.md),
        decoration: BoxDecoration(
          color: showBackground? dark? MyAppColors.dark : MyAppColors.light : Colors.transparent,
          borderRadius:
              BorderRadius.circular(MyAppSizes.cardRadiusLg),
          border: showBorder? Border.all(color: MyAppColors.grey): null,
        ),
        child: Row(
          children: [
            Icon(icon, color: MyAppColors.darkerGrey,),
            const SizedBox(width: MyAppSizes.spaceBtwItems,),
            Text(text, style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}
