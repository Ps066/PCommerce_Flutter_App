import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce/common/widgets/appbar/counter_icons.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(MyAppTexts.homeAppbarTitle,
              style:
                  Theme.of(context).textTheme.labelMedium!.apply(
                        color: MyAppColors.grey,
                      )),
          Text(MyAppTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(
                    color: MyAppColors.white,
                  )),
        ],
      ),
      actions: [
        CustomCounterIcons(
          onIconPress: () {},
          cartIcon: Iconsax.shopping_bag,
          label: "2",
          iconColor: MyAppColors.white,
        )
      ],
    );
  }
}

