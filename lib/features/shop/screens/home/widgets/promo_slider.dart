
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class BPromoSlider extends StatelessWidget {
  const BPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider
        
        (
          options: CarouselOptions(viewportFraction: 1)
          ,
          items: const [
                BRoundedImage(imageUrl: BImages.banner2,), 
                    BRoundedImage(imageUrl: BImages.banner3,), 
                        BRoundedImage(imageUrl: BImages.banner4,), 
          ], 
                      
          ),
           const SizedBox(height: BSizes.spaceBtwItems,), 
            Row(
             children: [
    for(int i = 0; i < 4; i++)
    
               const BCircularContainer(
                width: 20, 
                height: 4,
                 margin: EdgeInsets.only(right: 10), 
                 backgroundColor:  Colors.green,
               ), 
             
             ],
           )
      ],
    );
  }
}
