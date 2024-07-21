
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/device/device_utlity.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

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
       onPressed: (){
        OnBoardingController.instance.nextPage(); 
       },
        child: const Icon(Iconsax.arrow_right_3)));
  }
}



