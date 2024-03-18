import 'package:bellymax/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
final controller = OnBoardingController.instance; 
    final dark = BHelperFunctions.isDarkMode(context);
    return Positioned(
     bottom: BDeviceUtils.getBottomNavigationBarHeight() + 25,
     left: BSizes.defaultSpace,
     child: SmoothPageIndicator(
       effect:  ExpandingDotsEffect(
         activeDotColor: dark? BColors.light : BColors.dark, 
         dotHeight: 6
       ),
       controller: controller.pageController, 
       onDotClicked: controller.dotNavigationClick, 
       
        count: 3));
  }
}
