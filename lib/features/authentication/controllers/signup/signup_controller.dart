import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/http/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find(); 

  /// variables
  final hidePassword = true.obs; // observable for hiding/showing password. 
  final email = TextEditingController(); 
  final lastName = TextEditingController(); 
  final username = TextEditingController(); 
  final password = TextEditingController(); 
  final firstName = TextEditingController(); 
  final phoneNumber = TextEditingController(); 
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //form key for form validation 
  
  ///  -- signup
   
  Future<void> signup() async {
    try{

      // Start loading
      BFullScreenLoader.openLoadingDialog('We are processing your information...', BImages.docerAnimation); 

// Check Internet Connection
final isConnected = await NetworkManager.instance.isConnected(); 
if(!isConnected) return; 

// form validation
if(!signupFormKey.currentState!.validate()) return; 


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