// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/features/shop/controllers/all_products_controller.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../features/shop/models/product_model.dart';
import 'product_cards/product_card_vertical.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    // initialize controller for managing product fetching.
    final controller = Get.put(AllProductsController());
    controller.assignProducts(products);
    return Column(
      children: [
        // drop down
        DropdownButtonFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          value: controller.selectedSortOption.value, 
          onChanged: (value) {
// sort products based on the selected option. 
controller.sortProducts(value!); 

          },
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(
          height: BSizes.spaceBtwSections,
        ),

        // Products.
        Obx(() => GridLayout(
              itemCount: controller.products.length,
              itemBuilder: (_, index) => BProductCardVertical(
                product: controller.products[index],
              ),
            ))
      ],
    );
  }
}
