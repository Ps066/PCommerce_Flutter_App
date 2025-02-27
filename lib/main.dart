import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/app.dart';
import 'package:flutter_ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_ecommerce/firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // Todo: Add Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter bindings are initialized
  
  // Todo: Init local storage
  await GetStorage.init();

  // Todo: await Native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Todo: Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // Todo: Initialize Authentication

  runApp(const App());
}



// .then(...) is a callback function that executes after Firebase.initializeApp(...) completes.
// The function takes a parameter (FirebaseApp vale), which represents the initialized Firebase app.
// Get.put(AuthenticationRepository()) is part of GetX, a state management package for Flutter.
// Get.put(...) registers an instance of AuthenticationRepository into GetX’s dependency injection system.
// This means that the AuthenticationRepository will now be available throughout the app wherever it is needed.
