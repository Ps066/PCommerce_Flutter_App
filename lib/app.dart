import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:flutter_ecommerce/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}