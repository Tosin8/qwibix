import 'dart:async';

import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:bellymax/common/widgets/success_screen/success_screen.dart';
import 'package:bellymax/data/repositories/authentication/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();

  /// send email whenever verify screen appear and set timer for auto redirect. 
  
  @override 
  void onInit() {
    sendEmailVerification(); 
    setTimerForAutoRedirect(); 
    super.onInit(); 
  }

  /// send email verification link 
  
  sendEmailVerification() async{
    try{
await AuthenticationRepository.instance.sendEmailVerification();
BLoaders.successSnackBar(
  title: 'Email Sent', 
  message: 'Please check your email for verification link'); 
    } 
    catch(e){
BLoaders.errorSnackBar(
  title: 'Oh Snap!', 
message: e.toString()); 
    }
  }
  /// timer to auto redirect an email verification
  
  setTimerForAutoRedirect(){
    Timer.periodic(const Duration(seconds: 1), 
    (timer) async {
await FirebaseAuth.instance.currentUser?.reload(); 
final user = FirebaseAuth.instance.currentUser; 
if(user?.emailVerified ?? false) {
  timer.cancel(); 
  Get.off(
    () => SuccessScreen(
      image: BImages.successfullyRegisterAnimation, 
      title: BTexts.successfullyRegisterTitle,
      subTitle: BTexts.successfullyRegisterSubTitle,
      onPressed: () => AuthenticationRepository.instance.screenRedirect(), 
    ),
  ); 
}
  }); 
  /// manually check if email verification. 
}
}