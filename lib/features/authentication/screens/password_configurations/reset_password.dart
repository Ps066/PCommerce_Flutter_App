import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class RestPasswordPage extends StatelessWidget {
  const RestPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              // image 
            Image(image: const AssetImage(PImages.deliveredEmailIllustration), width: PHelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: PSizes.spaceBtwSections,),

            // title sub title
            Text(
              PTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: PSizes.spaceBtwItems,),
            Text(
              PTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            // button 

            const SizedBox(height: PSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},child: const Text(PTexts.done)),
            ),
            const SizedBox(height: PSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){},child: const Text(PTexts.resendEmail)),
            ),

          
            ],
          ),
        ),
      ),
    );
  }
}
