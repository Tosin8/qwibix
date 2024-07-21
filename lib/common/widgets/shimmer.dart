

import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';
import 'package:shimmer/shimmer.dart';

class TShimmerEffect extends StatelessWidget {
  const TShimmerEffect({super.key, required this.width, required this.height, this.radius = 15, this.color});


final double width, height, radius; 
final Color? color; 
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]!: Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]!: Colors.grey[100]!,
      child: Container(
        width: width, 
        height: height, 
        decoration: BoxDecoration(color: color ?? (dark ? BColors.darkerGrey : BColors.white), 
        borderRadius: BorderRadius.circular(  radius)),
      ),
    );

  }
}