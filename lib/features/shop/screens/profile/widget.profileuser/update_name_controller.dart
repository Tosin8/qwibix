
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/user/user_repository.dart';
import 'package:qwibix/features/personalization/controllers/user_controller.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/http/network_manager.dart';
import 'package:qwibix/utils/popups/full_screen_loader.dart';

import 'profile_user_screen.dart';

class UpdateNameController extends GetxController{
static UpdateNameController get instance => Get.find();

final firstName = TextEditingController();
final lastName = TextEditingController();
final userController = UserController.instance; 
final userRepository = Get.put(UserRepository()); 
GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

/// init user data when Home Screen appears
@override
void onInit() {
  initializeNames(); 
  super.onInit(); 
}

/// Fetch user record
Future<void> initializeNames() async{
  firstName.text = userController.user.value.firstName;
  lastName.text = userController.user.value.lastName;
}

Future<void> updateUserName() async {
  try {
    // Start loading
    BFullScreenLoader.openLoadingDialog('We are updating your information',
     BImages.docerAnimation); 

     // check internet connectivity
     final isConnected = await NetworkManager.instance.isConnected();
     if(!isConnected) {
      BFullScreenLoader.stopLoading(); 
      return; 
     } 

     // Form Validation
     if (!updateUserNameFormKey.currentState!.validate()) {
      BFullScreenLoader.stopLoading();
      return;

     }

     // Update user's first and last name in the firebase firestore
     Map<String, dynamic> name = {
      'FirstName': firstName.text.trim(),
      'LastName': lastName.text.trim(),

     };
     await userRepository.updateSingleField(name); 

     // update the Rx User value
     userController.user.value.firstName = firstName.text.trim();
     userController.user.value.lastName = lastName.text.trim();

     // remove loader
     BFullScreenLoader.stopLoading(); 

     // show success message
     BLoaders.successSnackBar(title: 'Congratulations', message: 'Your Name has been updated'); 

     // move to previous screen
     Get.off(() => const ProfileUserScreen());
  } catch (e) {
    BFullScreenLoader.stopLoading();
    BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());

  }
}



}