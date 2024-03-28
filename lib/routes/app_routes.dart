import 'package:bellymax/features/shop/screens/home/home.dart';
import 'package:bellymax/features/shop/screens/profile/profile.dart';
import 'package:bellymax/features/shop/screens/wishlist/wishlist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../features/shop/screens/store/store.dart';
import 'routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: BRoutes.home, page: () => const HomeScreen()), 
     GetPage(name: BRoutes.store, page: () => const Store()), 
      GetPage(name: BRoutes.favourites, page: () => const WishlistScreen()),
        GetPage(name: BRoutes.settings, page: () => const ProfileScreen()), 
         GetPage(name: BRoutes.home, page: () => const HomeScreen()), 
          GetPage(name: BRoutes.home, page: () => const HomeScreen()),  
          GetPage(name: BRoutes.home, page: () => const HomeScreen()), 
           GetPage(name: BRoutes.home, page: () => const HomeScreen()), 
  ]; 
}