import 'package:bellymax/features/shop/screens/home/home.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'utils/constants/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext  context) {

    final controller = Get.put(NavigationController()); 
    final darkMode = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>
         NavigationBar(
          elevation: 0,
          height: 75,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: ( index) =>
          controller.selectedIndex.value = index,  
          backgroundColor: darkMode ? BColors.black : BColors.white,
          indicatorColor: darkMode ? BColors.white.withOpacity(0.1) : BColors.black.withOpacity(0.1),
        
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home), 
              label: 'Home'),
         NavigationDestination(icon: Icon(Iconsax.shop), label: 'Menu'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
           
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            
            
          ],),
      ),

        body: Obx(() =>  controller.screens[controller.selectedIndex.value]), 
    ); 
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),  
    Container(color: Colors.black), 
    Container(color: Colors.yellow), 
    Container(color: Colors.brown), 
  ]; 
}