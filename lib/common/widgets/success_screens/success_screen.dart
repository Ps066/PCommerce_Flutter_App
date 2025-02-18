import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/styles/spacing_style.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onpressed});

  final String image , title , subtitle;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: PSpacingStyle.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // image 
            Image(image: AssetImage(image), width: PHelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: PSizes.spaceBtwSections,),

            // title sub title
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: PSizes.spaceBtwItems,),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            // button 

            const SizedBox(height: PSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: onpressed,child: const Text(PTexts.tContinue)),
            ),
          ],
        ),
      ),
    );
  }
}
