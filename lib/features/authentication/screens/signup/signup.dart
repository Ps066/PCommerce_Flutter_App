import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Text(
                MyAppTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              // sapcing in between
              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              // form
              SignUpForm(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}


