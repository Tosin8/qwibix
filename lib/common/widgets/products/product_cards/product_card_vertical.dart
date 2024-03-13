import 'package:bellymax/common/widgets/icons/favorite_icon.dart';
import 'package:bellymax/common/widgets/texts/product_title_text.dart';
import 'package:bellymax/model/product_list.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/rounded_container.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key, required this.TodaySpecialList, 
  
  });

final TodaySpecial TodaySpecialList; 
  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);

    // ignore: non_constant_identifier_names
    
    return GestureDetector( 
      onTap:() {
        
      },
      child: Container(
        width: 180, 
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(BSizes.productImageRadius), 
          color: dark ? BColors.grey: BColors.white, 
        ),
        child: Column(
          children: [
            BRoundedContainer(
              height: 200, 
              padding: const EdgeInsets.all(BSizes.sm), 
              backgroundColor: dark ? BColors.dark: BColors.light,
            
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(TodaySpecialList.image, ), 
                        fit: BoxFit.cover)
                      ),
                      // child: Image.asset(TodaySpecialList.image, fit: BoxFit.contain,), 
                      ),
                  ), 
      
                  /// - Sales Tag
      Positioned(
        top: 12, 
        left: 5, 
        child: BRoundedContainer(
      radius: BSizes.sm, 
      backgroundColor: BColors.secondary.withOpacity(0.8), 
      padding: const EdgeInsets.symmetric(horizontal: BSizes.sm, vertical: BSizes.xs), 
      child: Text(TodaySpecialList.discount, style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black),),
        )), 
      
        /// - Favorite Icon Button
        Positioned( 
      top: 4, right: 3, 
      child: BCircularIcon(dark: dark, icon: Iconsax.heart5, color: Colors.red,)), 
                ],
                 
                ), 
             
      
            ), 
            const SizedBox(height: BSizes.spaceBtwItems / 2), 
            /// Product Details
             Padding(padding: const EdgeInsets.only(left: BSizes.sm), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BProductTitleText(title: TodaySpecialList.title,
                smallSize: true,
                ), 
                const SizedBox(height: BSizes.spaceBtwItems / 2,), 
                Row(
                  children: [
                    Text(TodaySpecialList.brandTitle, overflow: TextOverflow.ellipsis, maxLines: 1, 
                    style: Theme.of(context).textTheme.labelMedium,), 
                    const SizedBox(width: BSizes.xs,), 
                    const Icon(Iconsax.verify5, color: BColors.primary, size: BSizes.iconXs,), 
                  ],
                ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(TodaySpecialList.price, 
                    maxLines: 1, 
                    overflow: TextOverflow.ellipsis, 
                    style: Theme.of(context).textTheme.headlineSmall, ), 
                    Container(
                      decoration: const BoxDecoration(
                        color: BColors.dark, 
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(BSizes.cardRadiusMd), 
                          bottomRight: Radius.circular(BSizes.productImageRadius), 
                        )
                      ),
                      child: const SizedBox(
                        width: BSizes.iconMd * 1.2, 
                        height: BSizes.iconMd  * 1.2,
                        child: Center(child: Icon(Iconsax.add, color: BColors.white,))),
                    )
                  ],
                )
      
              ],
            ),
            ), 
            
          ],
        ),
      ),
    );
  }
}


