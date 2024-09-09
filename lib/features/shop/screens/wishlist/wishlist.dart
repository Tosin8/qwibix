
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:qwibix/features/shop/controllers/product/favourite_controller.dart';
import 'package:qwibix/features/shop/models/product_model.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../home/home.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = FavouriteController.instance; 
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
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
        
        
        /// Products Grid. 
        child: FutureBuilder(
          future: controller.favouriteProducts(), 
        builder: (context, snapshot) {
          return GridLayout(itemCount: 6,
           itemBuilder: (_, index) => BProductCardVertical(product: ProductModel.empty())
           ); 
        }
        
        )
        ),
      ),
    );
  }
}