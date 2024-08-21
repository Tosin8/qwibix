
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../shimmers/shimmer.dart';

class BCircularImage extends StatelessWidget {
  const BCircularImage({
    super.key, 
    this.fit = BoxFit.cover, 
    required this.image,
      this.isNetWorkImage = false, 
     this.overlayColor,
      this.backgroundColor, 
      this.width = 56, 
      this.height = 56, 
      this.padding = BSizes.sm,
  });

final BoxFit? fit; 
final String image; 
final bool isNetWorkImage; 
final Color? overlayColor; 
final Color? backgroundColor; 
final double width, height, padding; 


  @override
  Widget build(BuildContext context) {
    return Container(
    width: width, 
    height: height,
     padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (BHelperFunctions.isDarkMode(context) ? BColors.black: BColors.white), 
        borderRadius: BorderRadius.circular(150), 
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child:
          isNetWorkImage ? 
          CachedNetworkImage(imageUrl: image, fit: fit, color: overlayColor, progressIndicatorBuilder: (context, url, downloadProgress) => const TShimmerEffect(width: 55, height: 55, radius: 50, ), 
          errorWidget: (context, url, error) => const Icon(Icons.error),) : 
           Image(
            fit: fit, 
            image: isNetWorkImage ?  NetworkImage(image) : AssetImage(image) as ImageProvider, 
          color: overlayColor),
        ),
      ),
    );
  }
}

