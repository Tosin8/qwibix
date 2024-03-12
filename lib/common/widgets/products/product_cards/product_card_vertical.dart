import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/rounded_container.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BProductCardVertical extends StatelessWidget {
  const BProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return Container(
      width: 180, 
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(BSizes.productImageRadius), 
        color: dark ? BColors.grey: BColors.white, 
      ),
      child: Column(
        children: [
          BRoundedContainer(
            
          ), 
        ],
      ),
    );
  }
}