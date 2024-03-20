import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
 
 static UserController get instance => Get.find(); 

 /// Save user record from any registration provider. 
 Future<void> saveUserRecord(UserCredential? userCredentials) async
 {}
}