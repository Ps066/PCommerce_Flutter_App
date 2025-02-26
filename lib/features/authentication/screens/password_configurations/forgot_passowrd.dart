import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/password_configurations/reset_password.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADING
            Text(
              MyAppTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // space
            const SizedBox(
              height: MyAppSizes.spaceBtwItems,
            ),
            Text(
              MyAppTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: MyAppSizes.spaceBtwSections * 2,
            ),

            // textfield
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MyAppTexts.email),
            ),

            const SizedBox(
              height: MyAppSizes.spaceBtwSections,
            ),

            // button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=> const RestPasswordPage());
                },
                child: const Text(MyAppTexts.tContinue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
