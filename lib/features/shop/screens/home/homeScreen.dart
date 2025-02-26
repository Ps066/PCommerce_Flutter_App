import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/home_appbar.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header section
            CurvedEdgeWidget(
              child: Column(
                children: [
                  // home app bar
                  const HomeAppBar(),
                  const SizedBox(
                    height: MyAppSizes.spaceBtwSections,
                  ),

                  // searchbar
                  SearchContainer()

                  //categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: MyAppSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(MyAppSizes.md),
        decoration: BoxDecoration(
          color: MyAppColors.white,
          borderRadius:
              BorderRadius.circular(MyAppSizes.cardRadiusLg),
          border: Border.all(color: MyAppColors.grey),
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal, color: MyAppColors.darkerGrey,),
            const SizedBox(width: MyAppSizes.spaceBtwItems,),
            Text('Search in Store', style: Theme.of(context).textTheme.bodySmall,)
          ],
        ),
      ),
    );
  }
}
