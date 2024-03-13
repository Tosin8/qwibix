import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandImageCard extends StatelessWidget {
  const BrandImageCard({
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
        borderRadius: BorderRadius.circular(100), 
      ),
      child: Center(
        child: Image(
          fit: fit, 
          image: isNetWorkImage ?  NetworkImage(image) : AssetImage(image) as ImageProvider, 
        color: overlayColor),
      ),
    );
  }
}

