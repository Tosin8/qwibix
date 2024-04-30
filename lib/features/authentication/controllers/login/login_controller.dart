import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/data/repositories/authentication/authentication_repository.dart';
import 'package:bellymax/features/personalization/controllers/user_controller.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/http/network_manager.dart';
import 'package:bellymax/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController{

// variables
final rememberMe = false.obs; 
final hidePassword = true.obs; 
final localStorage = GetStorage(); 
  final email = TextEditingController();

  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController()); 

  // @override
  // void onInit() {
  //   email.text = localStorage.read('REMEMBER_ME_EMAIL');
  //   password.text = localStorage.read('REMEMBER_ME_PASSWORD'); 
  //   super.onInit(); 


  // }

  // Email and Password SignIn 
  Future<void> emailAndPasswordSignIn() async {
    try{
      // start loading 
    
    BFullScreenLoader.openLoadingDialog('Logging you in...', BImages.docerAnimation); 

    // check internet connectivity
  final isConnected = await NetworkManager.instance.isConnected(); 
if(!isConnected) {
BFullScreenLoader.stopLoading();
return; 
  
      }
      // form validation
      if(!loginFormKey.currentState!.validate()) 
{BFullScreenLoader.stopLoading(); 
return; 
}

// save data if remember me is selected
if (rememberMe.value) {
localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim()); 
}

// login user using email and password auth. 

final userCredential = await AuthenticationRepository.instance.loginWithEmailAndPassword(
  email.text.trim(),
  password.text.trim()); 

  

// remove loader
BFullScreenLoader.stopLoading();

// Redirect 
AuthenticationRepository.instance.screenRedirect(); 
  }
  catch (e) {
    BFullScreenLoader.stopLoading(); 
  }
}

/// Google SignIn Auth.
Future<void> googleSignIn() async {
  try{

    // Start loading 
    BFullScreenLoader.openLoadingDialog('Logging you in...', BImages.docerAnimation);
    // check internet connectivity
    final isConnected = await NetworkManager.instance.isConnected(); 
    if(!isConnected) {
      BFullScreenLoader.stopLoading(); 
      return; 
    } 
    // google auth. 
    final userCredentials = await AuthenticationRepository.instance.signInWithGoogle(); 

    // save user record
    await userController.saveUserRecord(userCredentials); 
    
    
    // remove loader
    BFullScreenLoader.stopLoading();
    // Redirect 
    AuthenticationRepository.instance.screenRedirect();

  } catch(e) {

    // Remove loader
    BFullScreenLoader.stopLoading(); 
    BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
  }
}
}