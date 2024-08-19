
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
 
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return BCurvedEdgeWidget(
      child: Container( color: dark ? BColors.darkerGrey : BColors.light,
      child: Stack(
        children: [
    
          // Main Image Large 
          const SizedBox(
            height: 400, 
            child: Padding(
              padding: EdgeInsets.all(BSizes.productImageRadius * 2
              ), 
              child: Center(child: Image(image: AssetImage(BImages.productImage1))),
            ),
          ), 
    
          // Image Slider. 
    
          Positioned( 
            right: 0, 
            bottom: 30, 
            left: BSizes.defaultSpace, 
            child: SizedBox(
              height: 80 , 
              child: ListView.separated(
                itemCount: 4, 
                shrinkWrap: true, 
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __) => const SizedBox(width: BSizes.spaceBtwItems,),
                itemBuilder: (_, index) => BRoundedImage(
                width: 80, 
                backgroundColor: dark ? BColors.dark : BColors.white,
                imageUrl: BImages.productImage1, 
                border: Border.all(color: BColors.primary),
                padding: const EdgeInsets.all(BSizes.sm), 
                ), 
              ),
            ),
          ), 
    
          // AppBar Icons
          const BAppBar(
            showBackArrow: true, 
            actions: [
              BCircularIcon(icon: Iconsax.heart5, color: Colors.red)
            ],
          )
          
        ],
      )
      ),
    );
  }
}