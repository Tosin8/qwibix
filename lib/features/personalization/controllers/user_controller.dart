import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/data/repositories/user/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../models/user_model.dart';

class UserController extends GetxController {
 
 static UserController get instance => Get.find(); 

 final userRepository = Get.put(UserRepository()); 

 /// Save user record from any registration provider. 
 Future<void> saveUserRecord(UserCredential? userCredentials) async
 {

  try {
if (userCredentials != null) {
  // Convert name to first andn last name 
  final nameParts = UserModel.nameParts(userCredentials.user!.displayName ?? '');
 
  String username = UserModel.generatedUsername(userCredentials.user!.displayName ?? '');

  // Map Data 
  final user = UserModel(
    id: userCredentials.user!.uid, 
    firstName: nameParts[0], 
    lastName: nameParts.length > 1 ? nameParts.sublist(1).join('') : '', 
    username: username, 
    email: userCredentials.user!.email ?? '', 
    phoneNumber: userCredentials.user!.phoneNumber ?? '', 
    profilePicture: userCredentials.user!.photoURL ?? '', 
  );
  
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