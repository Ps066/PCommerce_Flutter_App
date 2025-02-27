import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widget/home_appbar.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

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
                  const SearchContainer(text: "Search in Store"),
                  const SizedBox(
                    height: MyAppSizes.spaceBtwSections,
                  ),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: MyAppSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                        ),
                        const SizedBox(
                          height: MyAppSizes.spaceBtwItems,
                        ),

                        // categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return VerticalImageText(title: 'Shoes', image: MyAppImageString.sportIcon, ontap: (){});
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: MyAppSizes.spaceBtwSections,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


