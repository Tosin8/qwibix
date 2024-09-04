// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/enums.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../features/shop/models/brand_model.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    Key? key,
    required this.brand,
    required this.showBorder,
    this.onTap,
  }) : super(key: key);

final BrandModel brand; 
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
        //  Flexible(
        //    child: BCircularImage( 
        //      isNetWorkImage: true, 
        //      image: brand.image, 
        //      backgroundColor: Colors.transparent, 
        //      overlayColor: BHelperFunctions.isDarkMode(context) ? BColors.white: BColors.black,
        //    ),
        //  ), 

        Flexible(
          child: CachedNetworkImage(
            imageUrl: brand.image, 
            placeholder: (context, url) => const CircularProgressIndicator(),
            )), 
         const SizedBox(width: BSizes.spaceBtwItems / 2,), 
    
    
         // Text
         Expanded(
           child: Column(
             mainAxisSize: MainAxisSize.min,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               BrandTitleVerifyIcon(
                 title: brand.name, 
                 brandTextSize: TextSizes.large,), 
                 Text(
                  
                  '${brand.productsCount ?? 0} products', 
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


