import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:qwibix/common/widgets/texts/product_title_text.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/enums.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
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
        ), 
        const SizedBox(height: BSizes.spaceBtwItems / 1.5,), 

        // Title 
        const BProductTitleText(title: 'Green Nike Sports Shirt'), 
        const SizedBox(height: BSizes.spaceBtwItems / 1.5,), 

        // Stock Status
        Row(
          children: [
            const BProductTitleText(title: 'Status'),
            const SizedBox(width: BSizes.spaceBtwItems,), 
             Text('In Stock', style: Theme.of(context).textTheme.titleMedium,), 
          ],
        ), 
       
        const SizedBox(height: BSizes.spaceBtwItems  / 1.5,), 

        // Brand. 
        Row(
          children: [
            BCircularImage(image: BImages.nikeLogo, 
            width: 32, height: 32, overlayColor: dark ? BColors.white : BColors.black,), 
            const BrandTitleVerifyIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        ), 
      ],
    );
  }
}