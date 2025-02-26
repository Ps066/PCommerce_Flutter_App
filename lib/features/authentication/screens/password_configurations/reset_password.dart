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
          padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(
            children: [
              // image 
            Image(image: const AssetImage(MyAppImageString.deliveredEmailIllustration), width: AppHelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: MyAppSizes.spaceBtwSections,),

            // title sub title
            Text(
              MyAppTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            Text(
              MyAppTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),

            // button 

            const SizedBox(height: MyAppSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){},child: const Text(MyAppTexts.done)),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){},child: const Text(MyAppTexts.resendEmail)),
            ),

          
            ],
          ),
        ),
      ),
    );
  }
}
