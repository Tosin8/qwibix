// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:qwibix/common/widgets/texts/product_title_text.dart';
import 'package:qwibix/features/shop/controllers/product/product_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/enums.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../models/product_model.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({
    Key? key,
    required this.product,
  }) : super(key: key);

final ProductModel product; 
  @override
  Widget build(BuildContext context) {
    final controller = ProductController.instance; 
    final salePercentage = controller.calculateSalePercentage(product.price, product.salePrice);
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
              child: Text('$salePercentage%', style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.black),),
            ), 
            const SizedBox(width: BSizes.spaceBtwItems,), 

            // Price
if(product.productType == ProductType.single.toString() && product.salePrice > 0)
            Text('\$${product.price}', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),), 
        if(product.productType == ProductType.single.toString() && product.salePrice > 0)    const SizedBox(width: BSizes.spaceBtwItems,), 
             BProductPriceText(price: controller.getProductPrice(product), isLarge: true,), 
          ],
        ), 
        const SizedBox(height: BSizes.spaceBtwItems / 1.5,), 

        // Title 
         BProductTitleText(title: product.title), 
        const SizedBox(height: BSizes.spaceBtwItems / 1.5,), 

        // Stock Status
        Row(
          children: [
            const BProductTitleText(title: 'Status'),
            const SizedBox(width: BSizes.spaceBtwItems,), 
             Text(controller.getProductStockStatus(product.stock), 
              style: Theme.of(context).textTheme.titleMedium,), 
          ],
        ), 
       
        const SizedBox(height: BSizes.spaceBtwItems  / 1.5,), 

        // Brand. 
        Row(
          children: [
            BCircularImage(image: product.brand != null ? product.brand!.image: '', 
            width: 32, height: 32, overlayColor: dark ? BColors.white : BColors.black,), 
             BrandTitleVerifyIcon(title: product.brand != null ? product.brand!.name : '', brandTextSize: TextSizes.medium,),
          ],
        ), 
      ],
    );
  }
}
