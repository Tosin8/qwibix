import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? Colors.white : Colors.black),), 
        // actions: [
        //   BCircularIcon(dark: dark, 
        //   icon: Iconsax.add,
        //   //onPressed: () => Get.to(HomeScreen()),
        //   ), 
        // ],
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(BSizes.defaultSpace)),
      ),
    );
  }
}