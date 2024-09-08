import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';

import '../../../../features/shop/controllers/product/favourite_controller.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key});

  @override
  Widget build(BuildContext context) {

   final controller = Get.put(FavouriteController());
    return BCircularIcon( icon: Iconsax.heart5, onPressed: (){},color: Colors.red, );
  }
}