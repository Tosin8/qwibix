// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../shimmers/shimmer.dart';

class BVerticalImageText extends StatelessWidget {
  const BVerticalImageText({
    Key? key,
    required this.title,
    required this.image, 
    this.textColor = BColors.white,
    this.backgroundColor,
    this.onTap,
   this.isNetworkImage = true,
  }) : super(key: key);

final String image, title; 
final Color textColor; 
final Color? backgroundColor; 
final void Function()? onTap; 
final bool isNetworkImage; 

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return GestureDetector( 
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: BSizes.spaceBtwItems),
        child: Column(
          children: [
            BCircularImage(
              fit: BoxFit.fitWidth, 
              padding: BSizes.sm * 1.4, 
              isNetworkImage: isNetworkImage, 

              backgroundColor: backgroundColor, 
              overlayColor: BHelperFunctions.isDarkMode(context) ? BColors.light: BColors.dark,
          
              image: image),
                                  // BCircularImage(
                                  //   backgroundColor: backgroundColor, dark: dark, image: image), 
        
                                  // Text 
                                  const SizedBox(height: BSizes.spaceBtwItems / 2,), 
                                  SizedBox(
        width: 55,
        child: Text(title, style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
        maxLines: 1, overflow: TextOverflow.ellipsis,), 
        )
                                  
          ]
        
        ),
      ),
    );
  }
}

class BCircularImage extends StatelessWidget {
  const BCircularImage({
    Key? key,
    this.fit = BoxFit.cover, 
    this.width = 56, 
    this.height = 56,
  this.isNetworkImage = false,
    this.overlayColor,
     this.backgroundColor,
    this.padding = BSizes.sm, 
    required this.image,
  }) : super(key: key);

final BoxFit? fit; 
final bool isNetworkImage; 
final Color? overlayColor; 
  final Color? backgroundColor;
final double width, height, padding;
  final String image;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Container(
            width: width, 
            height: height, 
            padding:  EdgeInsets.all(padding), 
            decoration: BoxDecoration(

              // if image background color is null, then swith it ot light and dark mode color design. 
              color: backgroundColor ?? (dark ? BColors.black: BColors.white), 
            borderRadius: BorderRadius.circular(100), 
            ),
            child:  ClipRRect( 
              borderRadius: BorderRadius.circular(100), 
              child: Center(
                child: isNetworkImage 
                ? CachedNetworkImage(imageUrl: image, fit: fit, color: overlayColor, progressIndicatorBuilder: (context, url, downloadProgress) => const TShimmerEffect(width: 55, height: 55, radius: 50, ),
                errorWidget: (context, url, error) => const Icon(Icons.error),) :

                 Image(
                  image: AssetImage(image), fit: fit, 
                color: overlayColor), 
              ),
            ),
    );
  }
}
