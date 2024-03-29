import 'package:bellymax/features/authentication/screens/login/login.dart';
import 'package:bellymax/features/authentication/screens/onboarding/onboarding.dart';
import 'package:bellymax/features/authentication/screens/password_configuration/forgot_pwd.dart';
import 'package:bellymax/features/authentication/screens/signup/signup.dart';
import 'package:bellymax/features/authentication/screens/signup/verify_email.dart';
import 'package:bellymax/features/shop/screens/home/home.dart';
import 'package:bellymax/features/shop/screens/profile/profile.dart';
import 'package:bellymax/features/shop/screens/wishlist/wishlist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../features/shop/screens/profile/userscreen.dart';
import '../features/shop/screens/store/store.dart';
import 'routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: BRoutes.home, page: () => const HomeScreen()), 
     GetPage(name: BRoutes.store, page: () => const Store()), 
      GetPage(name: BRoutes.favourites, page: () => const WishlistScreen()),
        GetPage(name: BRoutes.userProfile, page: () => const ProfileScreen()), 
         GetPage(name: BRoutes.settings, page: () => const ProfileUserScreen()), 
          GetPage(name: BRoutes.signIn, page: () => const LoginScreen()),  
          GetPage(name: BRoutes.signup, page: () => const SignUpScreen()), 
           GetPage(name: BRoutes.verifyEmail, page: () => const VerifyEmailScreen()), 
            GetPage(name: BRoutes.onBoarding, page: () => const OnBoardingScreen()), 
            GetPage(name: BRoutes.forgetPassword, page: () => const  ForgotPassword()), 
  ]; 
}