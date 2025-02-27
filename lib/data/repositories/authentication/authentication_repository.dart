import 'package:flutter/foundation.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter_ecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter_ecommerce/navigation_menu.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // variables
  final deviceStorage = GetStorage();

  // callback from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // function to show relative screen
  screenRedirect() async {
    // run in debug mode
    // if(kDebugMode){
    //   print('=============== GET STORAGE ===============');
    //   print(deviceStorage.read('isFirstTime'));
    // }




    // local storage
    deviceStorage.writeIfNull('isFirstTime',
        true); // this writes the local storage that we have visited the app for the first time

    // onboarding only for first time
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const NavigationMenu())
        : Get.offAll(() => const OnBoardingScreen());
  }

/* -------------------- Email & Password sign in -------------------- */
/* -------------------- Social sign in -------------------- */
}
