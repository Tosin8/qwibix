import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/styles/shadows.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:qwibix/common/widgets/texts/product_title_text.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BProductCardHorizontal extends StatelessWidget {
  const BProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return Container(
        width: 310, 
        padding: const EdgeInsets.all(1), 
        decoration: BoxDecoration(
          boxShadow: [BShadowStyle.verticalProductShadow], 
          borderRadius: BorderRadius.circular(BSizes.productImageRadius),
          color: dark ? BColors.darkerGrey : BColors.white, 
        ),
        child:  Row(
          children: [

            // Thumbnail  
            BRoundedContainer(
              height: 120, 
              padding: const EdgeInsets.all(BSizes.sm), 
              backgroundColor: dark ? BColors.dark : BColors.light,
              child: Stack(
                children: [

                  // thumbnail image
                  const SizedBox(
                    height: 120,
                    width: 120,
                    child: BRoundedImage(imageUrl: BImages.productImage1, applyImageRadius: true,)), 

                    
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

            // Details. 
            const SizedBox(
              width: 172,
              child: Padding(
                padding: EdgeInsets.only(top: BSizes.sm, left: BSizes.sm),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BProductTitleText(title: 'Green Nike Half Sleeves Shirt', 
                        smallSize: true,), 
                        SizedBox(height: BSizes.spaceBtwItems / 2,),
                        BrandTitleVerifyIcon(title: 'Nike'), 
                      ],
                    ), 
                
                    Row(
                      children: [
                        BProductPriceText(price: '175'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    ); 
  }
}