import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/shimmers/shimmer.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class VerticalProductShimmer extends StatelessWidget {
  const VerticalProductShimmer({super.key, this.itemCount = 4, }); 
  final int itemCount; 

  @override
  Widget build(BuildContext context) {
    return GridLayout
    (
      itemCount: itemCount, 
      itemBuilder: (_, __) => const SizedBox(
        width: 180, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            /// Image. 
            TShimmerEffect(width: 180, height:180), 
            SizedBox(height: BSizes.spaceBtwItems,), 

            // text
            TShimmerEffect(width: 160, height: 15), 
            SizedBox(height: BSizes.spaceBtwItems / 2,), 
            TShimmerEffect(width: 110, height: 15), 
          ],
        ),
      ),
    );
  }
}