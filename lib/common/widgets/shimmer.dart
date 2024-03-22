import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TShimmerEffect extends StatelessWidget {
  const TShimmerEffect({super.key, required this.width, required this.height, this.radius = 15, this.color});


final double width, height, radius; 
final Color? color; 
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Shimmer.fromColors();
  }
}