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
                      labelText: PTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              // space between both the horizontal text field
              const SizedBox(
                width: PSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: PTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              )
            ],
          ),
          // username
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              decoration: const InputDecoration(
                  labelText: PTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit))),
    
          // email
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              decoration: const InputDecoration(
                  labelText: PTexts.email,
                  prefixIcon: Icon(Iconsax.direct))),
    
          // phonenumber
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              decoration: const InputDecoration(
                  labelText: PTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call))),
    
          // password
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ), //vertical spacing
          TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: PTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffix: Icon(Iconsax.eye_slash))),
    
          // terms and conditions check box
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),
          TermsAndConditionsCheckBox(dark: dark),
    
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          // signup button 
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){
            Get.to(()=> const VerifyEmailPage());
          }, child: const Text(PTexts.createAccount),),),
    
          // divider 
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
          FormDivider(dividerText: PTexts.orSignUpWith.capitalize!),
    
        // social buttons 
        const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
        const SocialButtons(),
    
        ],
      ),
    );
  }
}

