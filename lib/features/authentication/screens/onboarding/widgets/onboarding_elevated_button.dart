import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/device/device_utility.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingElevatedButton extends StatelessWidget {
  const OnboardingElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Positioned(
      right: PSizes.defaultSpace,
      bottom: PDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? PColors.primary : Colors.black,
            side: BorderSide(color: dark ? PColors.primary : Colors.black)),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
