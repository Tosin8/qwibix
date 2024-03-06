import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BFormSocialMedia extends StatelessWidget {
  const BFormSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: BColors.grey), 
            borderRadius: BorderRadius.circular(100), 
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image
            
            (
              width: BSizes.iconMd, 
              height: BSizes.iconMd,
              image: AssetImage(BImages.google))),
        ), 
        const SizedBox(width: BSizes.spaceBtwItems,), 
          Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: BColors.grey), 
            borderRadius: BorderRadius.circular(100), 
          ),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image
            
            (
              width: BSizes.iconMd, 
              height: BSizes.iconMd,
              image: AssetImage(BImages.facebook))),
        ), 
      ],
    );
  }
}

