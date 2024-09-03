// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/products/product_cards/brand_showcase.dart';
import 'package:qwibix/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/models/product_model.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../models/category_model.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    Key? key,
    required this.category,
  }) : super(key: key);

final CategoryModel category; 
  @override
  Widget build(BuildContext context) {
    return  ListView( 
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(),
      children :[ Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
      child: Column(
        children: [
      
          /// Brands
       const BrandShowCase( images: [
          BImages.productImage1, BImages.productImage2, BImages.productImage3
        ]),
      
      const SizedBox(height: BSizes.spaceBtwItems,), 
      // Products
      BSectionHeading(title: 'You might like this', showActionButton: false, onPressed: () {
        
      },),
      const SizedBox(height: BSizes.spaceBtwItems,), 
//       GridLayout(itemCount: 4, itemBuilder: (_, index) =>
// BProductCardVertical(product: ProductModel.empty())), 
    
      
                  ],
                )
              
            ),
   ] );
  }
}
