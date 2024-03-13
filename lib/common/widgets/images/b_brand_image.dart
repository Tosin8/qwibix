import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandImageCard extends StatelessWidget {
  const BrandImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 56, 
    height: 56,
     padding: const EdgeInsets.all(BSizes.sm),
      decoration: BoxDecoration(
        color: BHelperFunctions.isDarkMode(context) ? BColors.black: BColors.white, 
        borderRadius: BorderRadius.circular(100), 
      ),
      child: Image(image: AssetImage(''), 
      color: BHelperFunctions.isDarkMode(context) ? BColors.white : BColors.dark,),
    );
  }
}

