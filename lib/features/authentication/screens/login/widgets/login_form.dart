import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup/signup.dart';
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
            vertical: PSizes.spaceBtwSections),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: PTexts.email),
            ),
            const SizedBox(height: PSizes.spaceBtwInputFields),
            // password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: PTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: PSizes.spaceBtwInputFields / 2),
            // rembember me & forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(PTexts.rememberMe),
                  ],
                ),
    
                // forgot password
                TextButton(
                    onPressed: () {},
                    child: const Text(PTexts.forgetPassword)),
              ],
            ),
    
            const SizedBox(
              height: PSizes.spaceBtwSections,
            ),
    
            // sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(PTexts.signIn),
              ),
            ),
    
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            // create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(()=> const SignUpPage());
                },
                child: const Text(PTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
