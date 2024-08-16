// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/features/shop/controllers/home_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class BPromoSlider extends StatelessWidget {
  const BPromoSlider({
    Key? key,
    required this.banners,
  }) : super(key: key);

final List<String> banners; 

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider
        
        (
          options: CarouselOptions(viewportFraction: 1, 
          onPageChanged: (index, _) => controller.updatePageIndicator(index),)
          ,
          items: banners.map((url) => BRoundedImage(imageUrl: url)).toList(), 
                      
          ),
           const SizedBox(height: BSizes.spaceBtwItems,), 
            Center(
              child: Obx( () => 
              Row(
                mainAxisSize: MainAxisSize.min,
                 children: [
                    for(int i = 0; i < banners.length; i++)
                    
                   BCircularContainer(
                    width: 20, 
                    height: 4,
                     margin: const EdgeInsets.only(right: 10), 
                     backgroundColor: controller.carouselCurrentIndex.value == i ? BColors.primary: BColors.grey,
                   ), 
                 
                 ],
                           ),
              ),
            )
      ],
    );
  }
}
