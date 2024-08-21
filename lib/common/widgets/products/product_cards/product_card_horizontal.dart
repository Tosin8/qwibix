import 'package:flutter/material.dart';
import 'package:qwibix/common/styles/shadows.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
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
        width: 180, 
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
              child: const Stack(
                children: [

                  // thumbnail image
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: BRoundedImage(imageUrl: BImages.productImage1, applyImageRadius: true,)), 
                ],
              ),
            )
          ],
        ),
    ); 
  }
}