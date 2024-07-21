
import 'package:get/get.dart';
import 'package:qwibix/features/shop/screens/home/home.dart';
import 'package:qwibix/features/shop/screens/wishlist/wishlist.dart';

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