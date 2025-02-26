import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/success_screens/success_screen.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
        child: Column(
          children: [
            // Image 
            Image(image: const AssetImage(MyAppImageString.deliveredEmailIllustration), width: AppHelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: MyAppSizes.spaceBtwSections,),

            // Title & SubTitle
            Text(
              MyAppTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            Text(
              'support@google.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            Text(
              MyAppTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),


            // Buttons
            const SizedBox(height: MyAppSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(()=>  SuccessScreen(
                  image: MyAppImageString.staticSuccessIllustration,
                  title: MyAppTexts.yourAccountCreatedTitle,
                  subtitle: MyAppTexts.yourAccountCreatedSubTitle,
                  onpressed: ()=> Get.to(()=> const LoginScreen()),
                ));
              },child: const Text(MyAppTexts.tContinue)),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){},child: const Text(MyAppTexts.resendEmail)),
            ),

          ],
        ),
      ),
    );
  }
}
