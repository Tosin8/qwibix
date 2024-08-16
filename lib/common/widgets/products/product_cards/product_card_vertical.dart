import 'package:flutter/material.dart';
import 'package:qwibix/common/styles/shadows.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180, 
      padding: const EdgeInsets.all(1), 
      decoration: BoxDecoration(
        boxShadow: [BShadowStyle.verticalProductShadow], 
        borderRadius: BorderRadius.circular(BSizes.productImageRadius),
        color: BHelperFunctions.isDarkMode(context) ? BColors.darkerGrey : BColors.white, 
      ),
    );
  }
}