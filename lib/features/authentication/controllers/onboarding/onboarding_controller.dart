import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance=> Get.find();  //Creates a new instance every time the app runs (even if we don’t need it yet).

  // variables 
  final pageController = PageController();   //PageController is a class provided by Flutter to manage the PageView widget
  Rx<int> currentPageIndex = 0.obs;

  //update current index when page scrolls
  void updatepageIndicator(index)=> currentPageIndex.value = index;


  //jump to specific dot selected page 
  void dotNavigatoionClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index); // inbuilt function
  }

  //update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){  // check if we are on the last page
      Get.offAll(const LoginScreen());
    }else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and jump to the last page  
  void skipPage(){
    currentPageIndex.value = 2; // 2 because we have just 3 page and indexing starts with 0
    pageController.jumpToPage(2); // inbuilt function
  }





}



//? static OnBoardingController get instance => Get.find();
// This creates a singleton instance of OnBoardingController using Get.find().
// What is happening?
// Get.find<OnBoardingController>() retrieves an already initialized instance of OnBoardingController.
// static OnBoardingController get instance makes this a singleton pattern so you can access it globally without creating a new object every time.