import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/products/product_cards/brand_card.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/controllers/category_controller.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'brand_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: const BAppBar(title: Text('All Brands'), 
      showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
        child: Column(
          children: [

            // Heading
            const BSectionHeading(title: 'Brands', showActionButton: false,),
            const SizedBox(height: BSizes.spaceBtwItems), 

            // Bramds
            GridLayout(itemCount: 6, mainAxisExtent: 80,
            
             itemBuilder: (_, index) => BrandCard(showBorder: true, onTap: () => Get.to(() => const BrandProducts()),),)
          ],
        ),
        ), 
        
      )
    );
  }
}