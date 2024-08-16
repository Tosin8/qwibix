// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:qwibix/common/styles/shadows.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/common/widgets/texts/product_title_text.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';


class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        width: 180, 
        padding: const EdgeInsets.all(1), 
        decoration: BoxDecoration(
          boxShadow: [BShadowStyle.verticalProductShadow], 
          borderRadius: BorderRadius.circular(BSizes.productImageRadius),
          color: dark ? BColors.darkerGrey : BColors.white, 
        ),
        child: Column(
          children: [
            // Thumbnail , Wishlist and discount tag. 
            BRoundedContainer(
              height: 180, 
              padding: const EdgeInsets.all(BSizes.sm),
              backgroundColor: dark ? BColors.dark : BColors.light,
              child:  Stack(
                children: [
      
                  // thumbnail image
                  const BRoundedImage(imageUrl: BImages.productImage1, applyImageRadius: true,), 
      
                  // sale tag
                  Positioned( 
                    top: 12, 
                    child: BRoundedContainer(
                      radius: BSizes.sm, 
                      backgroundColor: BColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: BSizes.sm, vertical: BSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black),),
                    ),
                  ), 
      
                  /// Favorite icon Button
                  const Positioned( 
                    top: 0, right: 0,
                     child: BCircularIcon(icon: Iconsax.heart5, color: Colors.red,),
      
                    ),
                  
                ],
              ),
            ), 
      const SizedBox(height: BSizes.spaceBtwItems / 2,),
            // details
             Padding(padding: const EdgeInsets.only(left: BSizes.sm), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const BProductTitleText(title: 'Green Nike Air Shoe', smallSize: true,), 
               const SizedBox(height: BSizes.spaceBtwItems / 2,), 
               Row(
                children: [
                  Text('Nike', style: Theme.of(context).textTheme.labelMedium, overflow: TextOverflow.ellipsis,
                  maxLines: 1,),
                  const SizedBox(width: BSizes.xs,), 
                  const Icon(Iconsax.verify5, color: BColors.primary, size: BSizes.iconXs,),
                ],
               ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // price
                  Text('\$25.00',  maxLines: 1,overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.headlineSmall,), 
                  Container(
                    decoration: const BoxDecoration(color: BColors.dark, borderRadius: BorderRadius.only(topLeft: Radius.circular(BSizes.cardRadiusMd), bottomRight: Radius.circular(BSizes.productImageRadius))),
                    child: const SizedBox(
                      width: BSizes.iconLg * 1.2,  height: BSizes.iconLg * 1.2,
                      child: Center(child: Icon(Iconsax.add, color: BColors.white,))),
                  )
                ],
              ) 
              ],
            ),)
          ],
        ),
      ),
    );
  }
}

