import 'package:bellymax/features/authentication/screens/login/login.dart';
import 'package:bellymax/features/authentication/screens/onboarding/onboarding.dart';
import 'package:bellymax/features/authentication/screens/signup/verify_email.dart';
import 'package:bellymax/navigation_menu.dart';
import 'package:bellymax/utils/exceptions/firebase_exception.dart';
import 'package:bellymax/utils/exceptions/format_exception.dart';
import 'package:bellymax/utils/exceptions/platform_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../utils/exceptions/firebase_auth_exception.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// variables
  final deviceStorage = GetStorage(); 
  final _auth = FirebaseAuth.instance; 

  /// Called from main.dart on app launch
  @override 
  void onReady() {
    // Remove the native splash screen 
    FlutterNativeSplash.remove(); 

    // Redirect to the appropriate screen 
    screenRedirect(); 
  }

  /// Function to show relevant screen 
  screenRedirect() async{
    final user = _auth.currentUser;

    if(user != null) {
      if(user.emailVerified) {
        Get.offAll(() => const NavigationMenu()); 
      } else {
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email,));
      }
    } else {
       deviceStorage.writeIfNull('IsFirstTime', true); 
    
    // check if it's the first time launching the app - using local storage. 
    deviceStorage.read('IsFirstTime') != true ?
     Get.offAll(() => const LoginScreen()) : 
     Get.offAll(() => const OnBoardingScreen());
  }

    }
    // local storage
// if (kDebugMode) {
//   print('=============== GET STORAGE Auth Repo ======='); 
//   print(deviceStorage.read('IsFirstTime'));
// }

   

  /* _____________ Email and Password Validation _____________ */

/// [EmailAuth] - SignIn
/// 
/// 
Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
  try{
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    throw BFirebaseAuthException(e.code).message;
  } on FirebaseException catch(e) {
    
    throw BFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const BFormatException();
  } on BPlatformException catch (e) {
    throw BPlatformException(e.code).message;
  }
  catch (e) {
    throw 'Something went wrong. Please try again';
  }
}


/// [EmailAuth] - SignUp
Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
  try{
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  } on FirebaseAuthException catch (e) {
    throw BFirebaseAuthException(e.code).message; 
  } on FirebaseException catch(e) {
    throw BFirebaseException (e.code).message;
  } on FormatException catch (_) {
    throw const BFormatException(); 
  } on BPlatformException catch (e) {
      throw BPlatformException(e.code).message; 
    } catch (e) {
      throw 'Something went wrong. Please try again'; 
    }
  }

  /// [email verification] - mail verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw BFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw  const BFormatException();
    } on BPlatformException catch (e) {
      throw BPlatformException(e.code).message;
      
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }


  /// [LogoutUser] - valid for any auth. 
  Future<void> logout() async{
    try{
      await FirebaseAuth.instance.signOut(); 
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw BFirebaseAuthException(e.code).message;
    } on BFirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const BFormatException();
    } on BPlatformException catch (e) {
      throw BPlatformException(e.code).message;
     } catch (e) {
       throw 'Something went wrong. Please try again';
     }
  }
}

