import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext  context) {

    final controller = Get.put(NavigationController()); 
    return Scaffold(
      bottomNavigationBar: Obx(
        () =>
         NavigationBar(
          elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: ( index) =>
          controller.selectedIndex.value = index,  
        
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
    Container(color: Colors.green), 
    Container(color: Colors.green), 
    Container(color: Colors.green), 
    Container(color: Colors.green), 
  ]; 
}