// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/shimmers/shimmer.dart';
import 'package:qwibix/features/shop/controllers/banner_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class BPromoSlider extends StatelessWidget {
  const BPromoSlider({
    Key? key,
   // required this.banners,
  }) : super(key: key);

//final List<String> banners; 

  @override
  Widget build(BuildContext context) {

   // final controller = Get.put(HomeController());
   final controller = Get.put(BannerController()); 
    return Obx(
       (){

      // loader 
      if (controller.isLoading.value) return const TShimmerEffect(width: double.infinity, height: 190);

      // no data found
      if (controller.banners.isEmpty) return const Text('No banners found');
      else {
      return Column(
        children: [
          CarouselSlider
          
          (
            options: CarouselOptions(viewportFraction: 1, 
            onPageChanged: (index, _) => controller.updatePageIndicator(index),)
            ,
            //items: controller.banners.map((url) => BRoundedImage(imageUrl: url)).toList(), 
            items: controller.banners.map((banner) => 
           // BRoundedImage(imageUrl: banner.imageUrl, isNetworkImage: true,)).toList(),
              CachedNetworkImage(
                imageUrl: banner.imageUrl,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
              )
            ).toList(),
          ),
                        
            
             const SizedBox(height: BSizes.spaceBtwItems,), 
              Center(
                child: Obx( () => 
                Row(
                  mainAxisSize: MainAxisSize.min,
                   children: [
                      for(int i = 0; i < controller.banners.length; i++)
                      
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
   } });
  }
}
