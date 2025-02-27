import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/personalization/screens/settings/settings_screen.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/homeScreen.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
     final controller = Get.put(NavigationController()); 
     final darkMode = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 65,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value = index,
          backgroundColor: darkMode? MyAppColors.black : Colors.white,
          indicatorColor: darkMode? MyAppColors.white.withOpacity(0.1): MyAppColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: const Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: const Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: const Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: const Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}



class NavigationController extends GetxController{
  // variable of current selected screen index
  final RxInt selectedIndex = 0.obs;

  // screens array 
  final screens = [
    HomeScreen(),
    Container(color: Colors.red,),
    Container(color: Colors.deepPurple,),
    SettingsScreen(),
  ];
}