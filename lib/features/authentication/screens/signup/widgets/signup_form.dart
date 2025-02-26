import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            // for first name last  name in horizontal
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: MyAppTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              // space between both the horizontal text field
              const SizedBox(
                width: MyAppSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: MyAppTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),
          // username
          const SizedBox(
            height: MyAppSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              decoration: const InputDecoration(
                  labelText: MyAppTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit))),
    
          // email
          const SizedBox(
            height: MyAppSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              decoration: const InputDecoration(
                  labelText: MyAppTexts.email,
                  prefixIcon: Icon(Iconsax.direct))),
    
          // phonenumber
          const SizedBox(
            height: MyAppSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              decoration: const InputDecoration(
                  labelText: MyAppTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call))),
    
          // password
          const SizedBox(
            height: MyAppSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: MyAppTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffix: Icon(Iconsax.eye_slash))),
    
          // terms and conditions check box
          const SizedBox(
            height: MyAppSizes.spaceBtwInputFields,
          ),
          TermsAndConditionsCheckBox(dark: dark),
    
          const SizedBox(
            height: MyAppSizes.spaceBtwSections,
          ),
          // signup button 
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){
            Get.to(()=> const VerifyEmailPage());
          }, child: const Text(MyAppTexts.createAccount),),),
    
          // divider 
          const SizedBox(
            height: MyAppSizes.spaceBtwSections,
          ),
          FormDivider(dividerText: MyAppTexts.orSignUpWith.capitalize!),
    
        // social buttons 
        const SizedBox(
            height: MyAppSizes.spaceBtwSections,
          ),
        const SocialButtons(),
    
        ],
      ),
    );
  }
}

