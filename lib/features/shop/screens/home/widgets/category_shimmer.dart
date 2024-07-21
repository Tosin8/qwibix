
import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/shimmer.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BCategoryShimmer extends StatelessWidget {
  const BCategoryShimmer({super.key,
   this.itemCount = 6
   });


final int itemCount; 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80, 
      child: ListView.separated(
        shrinkWrap: true,
scrollDirection: Axis.horizontal,
         separatorBuilder: (_, __) => const SizedBox(width:BSizes.spaceBtwItems), itemCount: itemCount, 
        itemBuilder: (context, index) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Images
              TShimmerEffect(width: 55, height: 55,radius: 55),
              SizedBox(height: BSizes.spaceBtwItems / 2,), 

              /// Text
               TShimmerEffect(width: 55, height:8),  
            ],
          );
        },), 
    );
  }
}