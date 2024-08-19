
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../home/home.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? Colors.white : Colors.black),), 
        actions: [
          BCircularIcon(
          icon: Iconsax.add,
          onPressed: () => Get.to(const HomeScreen()),
          ), 
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(BSizes.defaultSpace)),
      ),
    );
  }
}