import 'package:bellymax/common/widgets/loaders/loaders.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();

  /// send email whenever verify screen appear and set timer for auto redirect. 
  
  @override 
  void onInit() {
    sendEmailVerification(); 
    super.onInit(); 
  }

  /// send email verification link 
  
  sendEmailVerification(){
    try{

    } 
    catch(e){
BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
    }
  }
  /// timer to auto redirect an email verification
  /// 
  /// manually check if email verification. 
}