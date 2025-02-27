import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            CurvedEdgeWidget(
                child: Column(
              children: [
                MyAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: MyAppColors.white,),)),
                const SizedBox(height: MyAppSizes.spaceBtwSections,)
              ],
            ))

            // body
          ],
        ),
      ),
    );
  }
}
