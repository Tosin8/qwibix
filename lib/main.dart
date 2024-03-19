import 'package:bellymax/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';


// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  /// widgets binding 
  
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized(); 

  /// getx local storage 
  await GetStorage.init();

  /// await splash until other items load

FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

/// iniitalize firebase and auth. repository
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
  (FirebaseApp value) => Get.put(AuthenticationRepository()), 
  ); 

  // load all the material design
   runApp(const MyApp());  
}