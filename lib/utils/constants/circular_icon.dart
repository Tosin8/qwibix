import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'colors.dart';

class BCircularIcon extends StatelessWidget {
  const BCircularIcon({
    Key? key,
    this.size = BSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed, this.width, this.height,
  }) : super(key: key);

final double? width, height, size; 
final IconData icon; 
final Color? color;
final Color? backgroundColor; 
final VoidCallback? onPressed; 
  

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Container(
      width: width, 
      height: height,
      decoration: BoxDecoration( 
       color: backgroundColor != null ? backgroundColor! : dark ? BColors.black.withOpacity(0.9) : BColors.white.withOpacity(0.9),
       borderRadius: BorderRadius.circular(100), 
      ),
      child: IconButton(onPressed: onPressed, 
      icon:  Icon(icon, color:color , size: size,)),
    );
  }
}
