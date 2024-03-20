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
}