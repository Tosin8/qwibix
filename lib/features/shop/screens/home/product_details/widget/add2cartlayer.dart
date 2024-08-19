import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace, vertical: BSizes.defaultSpace / 2), 
      decoration: BoxDecoration(
        color: dark ? BColors.darkGrey : BColors.light, 
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(BSizes.cardRadiusLg), topRight: Radius.circular(BSizes.cardRadiusLg), 
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const BCircularIcon(icon: Iconsax.minus, 
              backgroundColor: BColors.darkGrey, 
              width: 40, height: 40, 
              color: BColors.white,), 
              const SizedBox(width: BSizes.spaceBtwItems,), 
              Text('2', style: Theme.of(context).textTheme.titleSmall,), 
                const SizedBox(width: BSizes.spaceBtwItems,), 
               const BCircularIcon(icon: Iconsax.add, 
              backgroundColor: BColors.black, 
              width: 40, height: 40, 
              color: BColors.white,), 
            ],
          ),
          ElevatedButton(onPressed: (){}, 
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(BSizes.md), 
            backgroundColor: BColors.black, 
            
          
          ),
          child: const Text('Add to Cart'))
        ],
      ),
      
    );
  }
}