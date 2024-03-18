import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find(); 

  /// variables
  final email = TextEditingController(); 
  final lastName = TextEditingController(); 
  final username = TextEditingController(); 
  final password = TextEditingController(); 
  final firstName = TextEditingController(); 
  final phoneNumber = TextEditingController(); 
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //form key for form validation 
  /// 
  ///  -- signup
  /// 
  Future<void> singup() async {
    try{

    } catch (e) {

    }
  finally {

  }
}}