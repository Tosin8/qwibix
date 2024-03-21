import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/data/repositories/authentication/authentication_repository.dart';
import 'package:bellymax/features/authentication/screens/password_configuration/reset_pwd.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/http/network_manager.dart';
import 'package:bellymax/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController{
  static ForgetPasswordController get instance => Get.find();


  /// variables
  final email = TextEditingController(); 
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>(); 

  /// send reset password email 
  
  sendPasswordResetEmail() async {
    try{
BFullScreenLoader.openLoadingDialog('Processing your request...', BImages.docerAnimation); 

// Check Internet Connectivity
final isConnected = await NetworkManager.instance.isConnected(); 
if (!isConnected) {BFullScreenLoader.stopLoading(); return; }

// Form Validation
if (!forgetPasswordFormKey.currentState!.validate()) {
  BFullScreenLoader.stopLoading();
 return; }

await AuthenticationRepository.instance.sendPassworodResetEmail(email.text.trim());

// Remove loader
BFullScreenLoader.stopLoading(); 

// Show success screen 
BLoaders.successSnackBar(
  title: 'Email Sent', 
  message: 'Email link has been sent to $email to reset your password'.tr,);

  // Redirect
  Get.to(() => ResetPassword(email: email.text.trim()));


    } catch (e) {}
  }
  
  resendPasswordResetEmail(String email) async {
    try {} catch (e) {}
  }
}