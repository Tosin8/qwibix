
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BRoundedImage extends StatelessWidget {
  const BRoundedImage({
    Key? key,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
     this.backgroundColor = BColors.white, 
    this.fit = BoxFit.contain, 
    this.padding,
this.isNetworkImage = false,
    this.onPressed, this.width, this.borderRadius = BSizes.md,
  }) : super(key: key);


final double? width, height; 
final String imageUrl; 
final bool applyImageRadius; 
final BoxBorder? border; 
final Color backgroundColor; 
final BoxFit? fit; 
final EdgeInsetsGeometry? padding; 
final bool isNetworkImage; 
final VoidCallback? onPressed;
final double borderRadius; 


  @override
  Widget build(BuildContext context) {
    return GestureDetector( 

      onTap: onPressed,
      child: Container (
        width: width, 
        height: height, 
        padding: padding, 
        decoration: BoxDecoration(
          border: border, 
          borderRadius: BorderRadius.circular(borderRadius), 
          color: backgroundColor),
          child:  ClipRRect(
            borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero, 
            child: Image(image: isNetworkImage? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider, fit: fit)),
      ),
    );
  }
}
