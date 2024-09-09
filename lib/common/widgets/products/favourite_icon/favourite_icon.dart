// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:qwibix/utils/constants/circular_icon.dart';

import '../../../../features/shop/controllers/product/favourite_controller.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({
    Key? key,
    required this.productId,
  }) : super(key: key);

final String productId; 
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavouriteController());
    return Obx(() => BCircularIcon(
          icon: controller.isFavourite(productId)? Iconsax.heart5 : Iconsax.heart,
          onPressed: () => controller.toggleFavouriteProduct(productId), 
          color: controller.isFavourite(productId) ? Colors.red : null, 
        ));
  }
}
