// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:qwibix/features/shop/screens/extensions/cart/cart.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class BCartCounterIcon extends StatelessWidget {
  const BCartCounterIcon({
    Key? key,
     this.counterTextColor,
    this.onPressed, 
    this.iconColor, this.counterBgColor,
  }) : super(key: key);

final Color? iconColor, counterBgColor, counterTextColor; 
final VoidCallback? onPressed; 
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(()=> const CartScreen()) , 
        icon: const Icon(Iconsax.shopping_bag),
         color: iconColor, ),
         Positioned(
          right: 0, 
          child: Container(
            width: 18, height: 18, 
            decoration: BoxDecoration(
              color:counterBgColor ?? (dark ? BColors.white: BColors.black),   
              borderRadius: BorderRadius.circular(100), 
            ),
            child: Center(
              child: Text('2', 
              style: Theme.of(context).textTheme.labelLarge!.apply(
                color: counterTextColor ?? (dark ? BColors.black: BColors.white), fontSizeFactor: 0.8),)
            )
          ))
    
      ],
    );
  }
}
