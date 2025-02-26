import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/password_configurations/forgot_passowrd.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:flutter_ecommerce/navigation_menu.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: MyAppSizes.spaceBtwSections),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MyAppTexts.email),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwInputFields),
            // password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: MyAppTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwInputFields / 2),
            // rembember me & forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(MyAppTexts.rememberMe),
                  ],
                ),
    
                // forgot password
                TextButton(
                    onPressed: () {
                      Get.to(()=> const ForgotPasswordScreen());
                    },
                    child: const Text(MyAppTexts.forgetPassword)),
              ],
            ),
    
            const SizedBox(
              height: MyAppSizes.spaceBtwSections,
            ),
    
            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(()=>const NavigationMenu());
                },
                child: const Text(MyAppTexts.signIn),
              ),
            ),
    
            const SizedBox(
              height: MyAppSizes.spaceBtwItems,
            ),
            // create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(()=> const SignUpPage());
                },
                child: const Text(MyAppTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
