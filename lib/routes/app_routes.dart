import 'package:bellymax/features/shop/screens/home/home.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: BRoutes.home, page: () => const HomeScreen()), 
  ]; 
}