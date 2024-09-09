

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:qwibix/data/repositories/user/user_repository.dart';
import 'package:qwibix/features/authentication/screens/login/login.dart';
import 'package:qwibix/features/authentication/screens/onboarding/onboarding.dart';
import 'package:qwibix/features/authentication/screens/signup/verify_email.dart';
import 'package:qwibix/navigation_menu.dart';
import 'package:qwibix/utils/exceptions/firebase_exception.dart';
import 'package:qwibix/utils/exceptions/format_exception.dart';
import 'package:qwibix/utils/exceptions/platform_exception.dart';
import 'package:qwibix/utils/local_storage/storage_utility.dart';

import '../../../utils/exceptions/firebase_auth_exception.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  /// variables
  final deviceStorage = GetStorage(); 
  final _auth = FirebaseAuth.instance; 

  /// Get Authenticated User Data
  User? get authUser => _auth.currentUser; 

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

      // if the user is logged in. 
      if(user.emailVerified) {

        // initialize user specific storage. 

        await BLocalStorage.init(user.uid);
// if the user email is verified, nav. to the main nav. mene

        Get.offAll(() => const NavigationMenu()); 
      } else {

        // if the user's email  is verified, nav. to the nav.menu. 
        
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email,));
      }
    } else {
      // local storage
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

/// [EmailAuth] - Login
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
      await GoogleSignIn().signOut(); 
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

  // Google Authentication - GOOGLE
  Future<UserCredential?> signInWithGoogle() async {
try{

  // Trigger the auth. flow
  final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn(); 

  final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication; 

  // create a new credential
  final credentials = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken, 
    idToken: googleAuth?.idToken
  );

  // Once signed in, return the user credential
  return await _auth.signInWithCredential(credentials); 

    } on FirebaseAuthException catch (e) {
      throw BFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw BFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw  const BFormatException();
    } on BPlatformException catch (e) {
      throw BPlatformException(e.code).message;
      
    } catch (e) {
      if (kDebugMode) {
        print('Something went wrong. Please try again: $e');
      } 
      return null; 
    }
  }

  /// [EmailAuth] - Password Reset
  Future<void> sendPasswordResetEmail(String email) async{
    try{
      await _auth.sendPasswordResetEmail(email: email); 
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

  // ReAuth User
  Future<void> reAuthenticateWithEmailAndPassword(String email, String password) async{
    try{

      // Create a credential
      AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);

      // ReAuth. 
      await _auth.currentUser!.reauthenticateWithCredential(credential);  
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

  // delete user - remove user auth and firestore account. 
  Future<void> deleteAccount() async {
    try {
      await UserRepository.instance.removeUserRecord(_auth.currentUser!.uid); 
      await _auth.currentUser?.delete(); 
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

