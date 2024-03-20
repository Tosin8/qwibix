import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
 
 static UserController get instance => Get.find(); 

 /// Save user record from any registration provider. 
 Future<void> saveUserRecord(UserCredential? userCredentials) async
 {

  try {
if (userCredentials != null) {
  
}
  } catch (e) 
  {
    BLoaders.warningSnackBar(
      title: 'Data not found',
       message: 'Something went wrong while saving your information.You can resave your data in your profile.',)
       ; 
  }
 }
}