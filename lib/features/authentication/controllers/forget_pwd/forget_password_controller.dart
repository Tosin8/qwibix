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


    } catch (e) {}
  }
  
  resendPasswordResetEmail(String email) async {
    try {} catch (e) {}
  }
}