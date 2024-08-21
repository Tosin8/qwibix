
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'shimmer.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({
    Key? key,
    this.itemCount = 6,
  }) : super(key: key);

  final int itemCount; 

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      height: 80, 
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __){
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 
              TShimmerEffect(width: 55, height: 55, radius: 55, ), 
              SizedBox(height: BSizes.spaceBtwItems / 2,), 
            ],
          );
        }, 
        
        
        separatorBuilder: (_, __) => const SizedBox(width: BSizes.spaceBtwItems,), itemCount: itemCount),
    );
  }
}
