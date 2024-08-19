import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Price and Sale Price 
        Row(
          children: [

            // Sale Tag
            BRoundedContainer(
              radius: BSizes.sm, 
              backgroundColor: BColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: BSizes.sm, vertical: BSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black),),
            ), 
            const SizedBox(width: BSizes.spaceBtwItems,), 

            // Price

            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),), 
            const SizedBox(width: BSizes.spaceBtwItems,), 
            const BProductPriceText(price: '175', isLarge: true,), 
          ],
        )

        // Title 

        // Stock Status

        // Brand. 
      ],
    );
  }
}