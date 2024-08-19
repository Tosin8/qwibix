
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
     final dark = BHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Rating
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24), 
            const SizedBox(width: BSizes.spaceBtwItems / 2,), 
            Text.rich(
              TextSpan(
              children: [
                TextSpan(text: '5.0', style: Theme.of(context).textTheme.bodyLarge), 
                TextSpan(text: ' (120)', style: Theme.of(context).textTheme.bodySmall), 
              ]
            ))
          ],
        ), 
        IconButton(onPressed: (){}, icon: Icon(Icons.share, size: BSizes.iconMd, color: dark ? BColors.white : BColors.dark,)), 
        
      ],
    );
  }
}
