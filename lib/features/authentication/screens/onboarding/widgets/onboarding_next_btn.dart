import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context); 
    return Positioned(
     right: BSizes.defaultSpace,
     bottom: BDeviceUtils.getBottomNavigationBarHeight() , 
     child: ElevatedButton(
       style: ElevatedButton.styleFrom(
         shape: const CircleBorder(), 
         backgroundColor: dark? BColors.primary : Colors.black),
       onPressed: (){},
        child: const Icon(Iconsax.arrow_right_3)));
  }
}



