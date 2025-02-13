import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onbaording_skip.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboardig_navigator.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_elevated_button.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_pages.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
            children: const [
              OnboardingPage(
                image: PImages.onBoardingImage1,
                title: PTexts.onBoardingTitle1,
                subTitle: PTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: PImages.onBoardingImage2,
                title: PTexts.onBoardingTitle2,
                subTitle: PTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: PImages.onBoardingImage3,
                title: PTexts.onBoardingTitle3,
                subTitle: PTexts.onBoardingSubTitle3,
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

