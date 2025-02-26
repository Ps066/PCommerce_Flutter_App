import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onbaording_skip.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboardig_navigator.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_elevated_button.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_pages.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            controller: controller.pageController,   // it will let us know the state of the page in real time
            onPageChanged: controller.updatepageIndicator,  // it will fetch index automatically
            children: const [
              OnboardingPage(
                image: MyAppImageString.onBoardingImage1,
                title: MyAppTexts.onBoardingTitle1,
                subTitle: MyAppTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: MyAppImageString.onBoardingImage2,
                title: MyAppTexts.onBoardingTitle2,
                subTitle: MyAppTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: MyAppImageString.onBoardingImage3,
                title: MyAppTexts.onBoardingTitle3,
                subTitle: MyAppTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // skip button
          const OnBoardingSkip(),

          // dot navigation smoothPageIndicator
          const OnBoardingDotNavigator(),

          // circular button
          const OnboardingElevatedButton()
        ],
      ),
    );
  }
}

