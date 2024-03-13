import 'package:bellymax/model/product_list.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/rounded_container.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return Container(
      width: 180, 
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(BSizes.productImageRadius), 
        color: dark ? BColors.grey: BColors.white, 
      ),
      child: Column(
        children: [
          BRoundedContainer(
            height: 180, 
            padding: EdgeInsets.all(BSizes.sm), 
            backgroundColor: dark ? BColors.dark: BColors.light,
          
            child: Stack(
              children: [
                Image.asset(TodaySpecialList[0].image, fit: BoxFit.cover,), 
Positioned(
  top: 12, 
  child: BRoundedContainer(
    radius: BSizes.sm, 
    backgroundColor: BColors.secondary.withOpacity(0.8), 
    padding: const EdgeInsets.symmetric(horizontal: BSizes.sm, vertical: BSizes.xs), 
    child: Text(TodaySpecialList[0].discount, style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black),),
  )), 
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100), 
      color: dark ? BColors.black.withOpacity(0.9) : BColors.white.withOpacity(0.9), 
    ), 
    child: IconButton(
      onPressed: (){},
     icon: Icon(Iconsax.heart5),
  )), 
              ],
               
              ), 
           

          ), 
        ],
      ),
    );
  }
}