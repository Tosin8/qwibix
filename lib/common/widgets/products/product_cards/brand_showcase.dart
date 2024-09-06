

import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';


class BrandShowCase extends StatelessWidget {
  const BrandShowCase({
    Key? key,
    required this.images,
  }) : super(key: key);


final List<String> images; 
  @override
  Widget build(BuildContext context) {
    return  BRoundedContainer(
      showBorder: true, 
      borderColor: BColors.darkGrey, 
    
    backgroundColor: Colors.transparent, 
    margin: const EdgeInsets.only(bottom: BSizes.spaceBtwItems),
    padding: const EdgeInsets.all(BSizes.md), 
    child: 
    Column(
      children: [
        //  BrandCard(showBorder: false,
        //   //brand: BrandModel.empty(),
        //   brand: brand, 
        //   ), 
        const SizedBox(height: BSizes.spaceBtwItems,), 

        /// Brand Top 2 product images
        Row(
          children:
            images.map((image) => BrandTopProductImageWidget(
              image, context)).toList() 
          
        ), 
      ],
    )
    
    );
  }

  // ignore: non_constant_identifier_names
  Widget BrandTopProductImageWidget(String image, context) {
    return Expanded(
      child: BRoundedContainer(height: 100, padding: const EdgeInsets.all(BSizes.md), margin: const EdgeInsets.only(right: BSizes.sm), 
    backgroundColor: BHelperFunctions.isDarkMode(context) ? BColors.darkGrey : BColors.light,
     child:  Image(image: AssetImage(image), fit: BoxFit.contain,),)); 
  }
}
