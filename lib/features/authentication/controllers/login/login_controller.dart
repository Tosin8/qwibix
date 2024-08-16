import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/authentication/authentication_repository.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/http/network_manager.dart';
import 'package:qwibix/utils/popups/full_screen_loader.dart';

import '../../../personalization/controllers/user_controller.dart';

class LoginController extends GetxController {
  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
 final email =  TextEditingController();
 final password = TextEditingController(); 
  
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());
 

@override 
  void onInit() {
    
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ;
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ;
    super.onInit(); 
  }

  // Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      BFullScreenLoader.openLoadingDialog('Logging you in...', BImages.docerAnimation);

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        BFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!loginFormKey.currentState!.validate()) {
        BFullScreenLoader.stopLoading();
        return;
      }

    // save data if remember me is selected
    if (rememberMe.value) {
      localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
      localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
    }

// login user using Email & password authentication
final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());


      // Remove loader
      BFullScreenLoader.stopLoading();
      email.clear();
      password.clear();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
      Get.delete<LoginController>();
    } catch (e) {
      BFullScreenLoader.stopLoading();
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  // Google SignIn Auth.
  Future<void> googleSignIn() async {
    try {
      // Start loading
      BFullScreenLoader.openLoadingDialog('Logging you in...', BImages.docerAnimation);
      
      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        BFullScreenLoader.stopLoading();
        return;
      }

      // Google auth.
      final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

      // Save user record
     await userController.saveUserRecord(userCredentials);

      // Remove loader
      BFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      // Remove loader
      BFullScreenLoader.stopLoading();
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
