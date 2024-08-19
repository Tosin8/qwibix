// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:qwibix/features/shop/models/brand_feature.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/enums.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BrandPartnersCard extends StatelessWidget {
  const BrandPartnersCard({
    super.key, required this.BrandList,
  });

final BrandFeature BrandList; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
     onTap: (){},
      child: BRoundedContainer(
       padding: const EdgeInsets.all(BSizes.sm), 
       showBorder: true, 
       backgroundColor: Colors.transparent, 
       child: Row(
         children: [
      
           /// Icon 
           Flexible(
             child: BCircularImage(
               image: BrandList.image,
               isNetWorkImage: false, 
               backgroundColor: Colors.transparent, 
              //  overlayColor: BHelperFunctions.isDarkMode(context) ? BColors.white: BColors.black,
              ),
           ), 
             const SizedBox(width: BSizes.spaceBtwItems / 2,), 
      
             /// Text
             Expanded(
               child: Column(
                mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   BrandTitleVerifyIcon(
                    
                    title: BrandList.titleBrand, 
                   brandTextSize: TextSizes.large,), 
                   Text(BrandList.productTitle, 
                   overflow: TextOverflow.ellipsis, 
                   style: Theme.of(context).textTheme.labelMedium,), 
                 ],
               ),
             )
      
         ],
       ),
      ),
    );
  }
}


class BrandCard extends StatelessWidget {
  const BrandCard({
    Key? key,
    required this.showBorder,
    this.onTap,
  }) : super(key: key);

  final bool showBorder; 
  final void Function()? onTap; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
                          onTap: onTap, 
    child: BRoundedContainer(
     padding: const EdgeInsets.all(BSizes.sm), 
     showBorder: true, 
     backgroundColor: Colors.transparent, 
     child: Row(
       children: [
    
         // brand icons
         Flexible(
           child: BCircularImage( 
             isNetWorkImage: false, 
             image: BImages.clothIcon, 
             backgroundColor: Colors.transparent, 
             overlayColor: BHelperFunctions.isDarkMode(context) ? BColors.white: BColors.black,
           ),
         ), 
         const SizedBox(width: BSizes.spaceBtwItems / 2,), 
    
    
         // Text
         Expanded(
           child: Column(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const BrandTitleVerifyIcon(
                 title: 'Nike', 
                 brandTextSize: TextSizes.large,), 
                 Text('256 Products,', 
                 overflow: TextOverflow.ellipsis, 
                 style: Theme.of(context).textTheme.labelMedium,)
             ],
           ),
         ), 
       ],
     ),
                      ),
                         );
  }
}


