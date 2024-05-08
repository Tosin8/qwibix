import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/data/repositories/authentication/authentication_repository.dart';
import 'package:bellymax/data/repositories/user/user_repository.dart';
import 'package:bellymax/features/authentication/screens/login/login.dart';
import 'package:bellymax/features/shop/screens/profile/widget.profileuser/re_authenticate_user_login_form.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/http/network_manager.dart';
import 'package:bellymax/utils/popups/full_screen_loader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../models/user_model.dart';

class UserController extends GetxController {
 
 static UserController get instance => Get.find(); 

final profileLoading = false.obs; 

Rx<UserModel> user = UserModel.empty().obs; 

final hidePassword = false.obs; 
final imageUploading = false.obs; 
final verifyEmail = TextEditingController(); 
final verifyPassword = TextEditingController();
 final userRepository = Get.put(UserRepository()); 
 GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

 @override 
 void onInit() {
  super.onInit(); 
  fetchUserRecord(); 
 }

// Fetch user record
Future<void> fetchUserRecord() async {
  try{
    profileLoading.value = true;
final user = await userRepository.fetchUserDetails(); 
this.user(user); 
profileLoading.value = true; 

  } catch (e) {
    user(UserModel.empty()); 
  } finally {
    profileLoading.value = false;
  }
}



 /// Save user record from any registration provider. 
 Future<void> saveUserRecord(UserCredential? userCredentials) async
 {

  try {
// First update Rx User and then check if user date is already stored, if not store new data. 
    await fetchUserRecord();

    // if no record already stored. 
    if(user.value.id.isEmpty) {

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
  
  
  // save user data in the firebase.
  await userRepository.saveUserRecord(user);
}
  }
   } catch (e) 
  {
    BLoaders.warningSnackBar(
      title: 'Data not found',
       message: 'Something went wrong while saving your information.You can resave your data in your profile.',)
       ; 
  }
 }

 // Delete Account Warning
 void deleteAccountWarningPopup() {
  Get.defaultDialog(
    contentPadding: const EdgeInsets.all(BSizes.md),
    title: 'Delete Account', 
    middleText: 'Are you sure you want to delete your account permanently? This action is not reversible and all of your data will be removed permanently',
    confirm: ElevatedButton(onPressed: () async => deleteUserAccount(), 
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red, side: const BorderSide(color: Colors.red)), 
    child: const Padding(padding: EdgeInsets.symmetric(horizontal: BSizes.lg), 
    child: Text('Delete'),
    ), 
    ) , 
    cancel: OutlinedButton(
      onPressed: () => Navigator.of(Get.overlayContext!).pop(), 
      child: const Text('Cancel'), 
    )
  ); 
 }


 // Dlete user account
void deleteUserAccount() async{
  try {
    BFullScreenLoader.openLoadingDialog('Processing', 
    BImages.docerAnimation
    ); 

    /// First re-auth. user
  final auth = AuthenticationRepository.instance; 
  final provider = auth.authUser!.providerData.map((e) => e.providerId).first;
  if(provider.isNotEmpty) {
    // re verify auth email
    if (provider == 'google.com') {
      await auth.signInWithGoogle(); 
      await auth.deleteAccount(); 
      BFullScreenLoader.stopLoading(); 
      Get.offAll(() => const LoginScreen());
    } else if (provider == 'password') {
      BFullScreenLoader.stopLoading(); 
      Get.to(() => const ReAuthLoginForm());
    }
  } 

  } catch(e) {
    BFullScreenLoader.stopLoading(); 
    BLoaders.warningSnackBar(title: 'Oh Snap!', message: e.toString()); 
  }
}


// RE -AUTH before deleting 
Future<void> reAuthenticateEmailAndPasswordUser() async{
  try {
    BFullScreenLoader.openLoadingDialog('Processing', BImages.docerAnimation); 

    // check internet
    final isConnected = await NetworkManager.instance.isConnected(); 
    if(!isConnected) {
      BFullScreenLoader.stopLoading();
      return;
    }

    if (!reAuthFormKey.currentState!.validate()) {
      BFullScreenLoader.stopLoading();
      return;
    }

    await AuthenticationRepository.instance.reAuthenticateWithEmailAndPassword(verifyEmail.text.trim(), 
    verifyPassword.text.trim());
    await AuthenticationRepository.instance.deleteAccount();
    BFullScreenLoader.stopLoading(); 
    Get.offAll(() => const LoginScreen());
  } catch (e) {
    BFullScreenLoader.stopLoading();
    BLoaders.warningSnackBar(title: 'Oh Snap!', message: e.toString());
  }
}


// Upload Profile Image
uploadUserProfilePicture() async {
  try {
  final image = await ImagePicker().pickImage(
    source: ImageSource.gallery, 
    imageQuality: 70, 
    maxWidth: 150,
     maxHeight: 150);
     if(image != null) {
      imageUploading.value = true;
       // Upload Image
       final imageUrl = await userRepository.uploadImage('Users/Images/Profile/', image); 

       // Update user image record
       Map<String, dynamic> json = {'ProfilePicture': imageUrl};
       await userRepository.updateSingleField(json);

       user.value.profilePicture = imageUrl;
       user.refresh(); 
       
       BLoaders.successSnackBar(title: 'Congratulations', message: 'Your Profile Image has been updated!'); 
     }
}
catch (e) {
  BLoaders.errorSnackBar(title: 'Oh Snap!', 
  message: 'Something went wrong: $e');
}
finally {
  imageUploading.value = false;
}
}

}
