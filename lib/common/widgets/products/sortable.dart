

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../features/shop/models/product_model.dart';
import 'product_cards/product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
        // drop down
        DropdownButtonFormField(
          decoration:  const InputDecoration(
            prefixIcon: Icon(Iconsax.sort), 
            
          ),
              onChanged: (value) {},
          items:   [
            'Name', 'Higher Price', 'Lower Price','Sale', 'Newest','Popularity'
          ].map((option) => DropdownMenuItem(value: option, child: Text(option))). toList(), 
      
        ), 
        const SizedBox(height: BSizes.spaceBtwSections,), 
    
        // Products. 
        GridLayout(itemCount: 4, 
        itemBuilder: (_, index) =>  BProductCardVertical(product: ProductModel.empty(),),)
      ],
    );
  }
}