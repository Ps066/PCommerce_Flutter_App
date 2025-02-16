import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/styles/spacing_style.dart';
import 'package:flutter_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo , title and subtitle
              LoginHeader(dark: dark),

              // form
              const LoginForm(),

              // divider
              FormDivider(dividerText: PTexts.orSignInWith.capitalize!),
              const SizedBox(height: PSizes.spaceBtwSections,),

              // footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}



