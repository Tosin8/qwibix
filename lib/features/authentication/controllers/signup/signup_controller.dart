import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/data/repositories/authentication/authentication_repository.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/http/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find(); 

  /// variables
  final hidePassword = true.obs; // observable for hiding/showing password. 
  final privacyPolicy = true.obs; 
  final email = TextEditingController(); 
  final lastName = TextEditingController(); 
  final username = TextEditingController(); 
  final password = TextEditingController(); 
  final firstName = TextEditingController(); 
  final phoneNumber = TextEditingController(); 
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //form key for form validation 
  
  ///  -- signup
   
  void signup() async {
    try{

      // Start loading
      BFullScreenLoader.openLoadingDialog('We are processing your information...', BImages.docerAnimation); 

// Check Internet Connection
final isConnected = await NetworkManager.instance.isConnected(); 
if(!isConnected) return; 

// form validation
if(!signupFormKey.currentState!.validate()) return; 

// privacy policy
if(!privacyPolicy.value) {
  BLoaders.warningSnackBar( 
    title: 'Accept Privay Policy', 
    message: 'In order to create your account, you must accept the privacy policy and terms of use.', 
    );
    
  return ; 
}

// Register user in the firebase auth. and save user data in the firebase. 
final UserCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(
  email.text.trim(),
   password.text.trim()); 

// Save auth. user data in the firebase firestore 
final newUser = UserModel(
  id: UserCredential.user!.uid, 
  firstName: firstName.text.trim(), 
  lastName: lastName.text.trim(), 
  username: username.text.trim(), 
  email: email.text.trim(), 
  phoneNumber = phoneNumber.text.trim(), 
  profilePicture: '', 
); 

    } catch (e) {
      // show some generic error to the user
      BLoaders.errorSnackBar(
        title: 'Oh Snap!', 
        message: e.toString()); 
    }
  finally {
    // remove loader
    BFullScreenLoader.stopLoading();

  }
}}