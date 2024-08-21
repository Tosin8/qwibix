import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: const BAppBar(
        title: Text('All Products'), showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
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
            itemBuilder: (_, index) => const BProductCardVertical(),)
          ],
        ),
        ),
      )
    );
  }
}