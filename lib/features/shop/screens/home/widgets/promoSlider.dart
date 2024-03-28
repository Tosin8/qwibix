import 'package:bellymax/common/widgets/images/b_carousel_images.dart';
import 'package:bellymax/features/shop/controllers/home_controller.dart';
import 'package:bellymax/utils/constants/circular_container.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/banner_controller.dart';

class BPromoSlider extends StatelessWidget {
  const BPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners; 

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Column(
      children: [
        CarouselSlider(
         options: CarouselOptions(
           viewportFraction: 1, 
           onPageChanged: (index, _)=> controller.updatePageIndicator(index), 
         ),
         items: banners.map((url) => BCarouselImages(imageUrl: url)).toList(),  
        //  items: const [
        //    BCarouselImages(imageUrl: BImages.banner1,),
        //     BCarouselImages(imageUrl: BImages.banner2,),
        //      BCarouselImages(imageUrl: BImages.banner3,),
        //  ]
         ),
         const SizedBox(height: BSizes.spaceBtwItems,), 
         Center(
           child: Obx( ()=>
              Row(
                mainAxisSize: MainAxisSize.min,
               children: [
                 for(int i = 0; i < banners.length; i++)
                  BCircularContainer(
                   
                   width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                   backgroundColor: controller.carouselCurrentIndex.value == i ? BColors.primary: BColors.grey,),
               ],
             ),
           ),
         )
      ],
    );
  }
}

