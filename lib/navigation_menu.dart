import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext  context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Iconsax.home), 
            label: 'Home'),
       NavigationDestination(icon: Icon(Iconsax.shop), label: 'Menu'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
         
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          
          
        ],),
    ); 
  }
}