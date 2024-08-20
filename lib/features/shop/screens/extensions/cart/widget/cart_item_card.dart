
import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:qwibix/common/widgets/texts/product_title_text.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image. 
        BRoundedImage(
          imageUrl: BImages.productImage1, 
          width: 60, 
          height: 60, 
          padding: const EdgeInsets.all(BSizes.sm),
          backgroundColor: BHelperFunctions.isDarkMode(context) ? BColors.darkerGrey : BColors.light,), 
          const SizedBox(width: BSizes.spaceBtwItems,), 
    
          // title, price and size. 
          Expanded(
            child: Column (
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BrandTitleVerifyIcon(title: 'Nike'), 
                const Flexible(child: BProductTitleText(title: 'Black Sports Shoes', maxLines: 1,)), 
            
                // attributes
                Text.rich(  
                  TextSpan(
                    children: [
                      TextSpan(text: 'Color : ', style: Theme.of(context).textTheme.bodySmall, 
                      ),
                       TextSpan(text: 'Green  ', style: Theme.of(context).textTheme.bodyLarge, 
                      ),
                      TextSpan(text: 'Size : ', style: Theme.of(context).textTheme.bodySmall, 
                      ),
                       TextSpan(text: 'UK 80  ', style: Theme.of(context).textTheme.bodyLarge, 
                      ),
                    ]
                  )
                ), 
            
              ],),
          ), 
      ],
    );
  }
}