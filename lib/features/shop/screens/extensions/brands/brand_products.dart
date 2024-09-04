// import 'package:flutter/material.dart';
// import 'package:qwibix/common/widgets/appbar/appbar.dart';
// import 'package:qwibix/common/widgets/products/product_cards/brand_card.dart';
// import 'package:qwibix/common/widgets/products/sortable.dart';
// import 'package:qwibix/features/shop/models/brand_model.dart';
// import 'package:qwibix/utils/constants/sizes.dart';

// class BrandProducts extends StatelessWidget {
//   const BrandProducts({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//       appBar: const BAppBar(
//         title: Text('Nike'), showBackArrow: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(padding: 
//         const EdgeInsets.all(BSizes.defaultSpace),
//         child: Column(
//           children: [

//             // Brand Detail 
//             BrandCard(showBorder: true, brand: BrandModel.empty(),), 
//             const SizedBox(height: BSizes.spaceBtwSections,), 

//            const SortableProducts(products: [],), 
//           ],
//         ),
//         ),
//       ),
//     );
//   }
// }

// chat gpt
import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/products/product_cards/brand_card.dart';
import 'package:qwibix/common/widgets/products/sortable.dart';
import 'package:qwibix/features/shop/models/brand_model.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  final BrandModel brand; // Add this line

  const BrandProducts({super.key, required this.brand}); // Modify constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAppBar(
        title: Text(brand.name ?? ''), // Use brand name here
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              BrandCard(showBorder: true, brand: brand), // Pass the actual brand data here
              const SizedBox(height: BSizes.spaceBtwSections,),

              // Products
             // SortableProducts(products: brand.products ?? []), // Show products dynamically
            ],
          ),
        ),
      ),
    );
  }
}
