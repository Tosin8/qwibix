import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/products/product_cards/brand_card.dart';
import 'package:qwibix/common/widgets/products/sortable.dart';
import 'package:qwibix/features/shop/models/brand_model.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: const BAppBar(
        title: Text('Nike'), showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
          children: [

            // Brand Detail 
            BrandCard(showBorder: true, brand: BrandModel.empty(),), 
            const SizedBox(height: BSizes.spaceBtwSections,), 

           const SortableProducts(products: [],), 
          ],
        ),
        ),
      ),
    );
  }
}