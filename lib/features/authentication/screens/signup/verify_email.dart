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
        padding: const EdgeInsets.all(PSizes.defaultSpace),
        child: Column(
          children: [
            // Image 
            Image(image: const AssetImage(PImages.deliveredEmailIllustration), width: PHelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: PSizes.spaceBtwSections,),

            // Title & SubTitle
            Text(
              PTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: PSizes.spaceBtwItems,),
            Text(
              'support@google.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: PSizes.spaceBtwItems,),
            Text(
              PTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),


            // Buttons
            const SizedBox(height: PSizes.spaceBtwSections,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(()=>  SuccessScreen(
                  image: PImages.staticSuccessIllustration,
                  title: PTexts.yourAccountCreatedTitle,
                  subtitle: PTexts.yourAccountCreatedSubTitle,
                  onpressed: ()=> Get.to(()=> const LoginScreen()),
                ));
              },child: const Text(PTexts.tContinue)),
            ),
            const SizedBox(height: PSizes.spaceBtwItems,),
            SizedBox(
              width: double.infinity,
              child: TextButton(onPressed: (){},child: const Text(PTexts.resendEmail)),
            ),

          ],
        ),
      ),
    );
  }
}
