
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BCircularIcon extends StatelessWidget {
  const BCircularIcon({
    super.key,
    required this.dark, 
    this.width, 
    this.height, 
    this.size= BSizes.lg,
     required this.icon,
      this.color,
       this.backgroundColor, 
       this.onPressed,
  });

  final double? width, height, size; 
  final IconData icon; 
  final Color? color; 
  final Color? backgroundColor; 
  final VoidCallback? onPressed; 
  

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, 
      height: height, 
      decoration: BoxDecoration(
color: backgroundColor != null 
?  backgroundColor! 
: BHelperFunctions.isDarkMode(context) 
? BColors.black.withOpacity(0.9) : BColors.white.withOpacity(0.9), 
        borderRadius: BorderRadius.circular(100), 
        
      ), 
      child: IconButton(
        onPressed: onPressed, 
       icon: Icon(icon, color:color, size: size),
    ));
  }
}