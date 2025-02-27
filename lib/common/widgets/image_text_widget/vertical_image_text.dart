import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = MyAppColors.white,
    this.backgroundColor = MyAppColors.white,
    required this.ontap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(right: MyAppSizes.spaceBtwItems),
        child: Column(
          children: [
            // circular icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(MyAppSizes.sm),
              decoration: BoxDecoration(
                  color: (backgroundColor != MyAppColors.white && backgroundColor != MyAppColors.black) 
        ? backgroundColor 
        : (AppHelperFunctions.isDarkMode(context) ? MyAppColors.black : MyAppColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: AppHelperFunctions.isDarkMode(context)? MyAppColors.light: MyAppColors.dark,
                ),
              ),
            ),

            // text
            const SizedBox(
              height: MyAppSizes.spaceBtwItems / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(
                        color: textColor,
                      ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ))
          ],
        ),
      ),
    );
  }
}