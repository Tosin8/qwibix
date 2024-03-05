import 'package:bellymax/features/authentication/screens/onboarding/widgets/onboarding_dot_nav.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:flutter/material.dart';



import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';


import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override 
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack (
        children: [
/// Horizontal Scrollable Pages 
 PageView(
  children: const [
     OnBoardingPage(
      image: BImages.onBoardingImage1,
      title: BTexts.onBoardingTitle1,
      subTitle: BTexts.onBoardingSubTitle1,
    ),
     OnBoardingPage(
      image: BImages.onBoardingImage2,
      title: BTexts.onBoardingTitle2,
      subTitle: BTexts.onBoardingSubTitle2,
    ),
     OnBoardingPage(
      image: BImages.onBoardingImage3,
      title: BTexts.onBoardingTitle3,
      subTitle: BTexts.onBoardingSubTitle3,
    ),
  ],
 ),
 const OnBoardingSkip(), 
 const OnBoardingDotNavigation(), 
 Positioned(
  right: BSizes.defaultSpace,
  bottom: BDeviceUtils.getBottomNavigationBarHeight() , 
  child: ElevatedButton(
    onPressed: (){},
     child: Icon(Iconsax.arrow_right_3)))
      ],)
    ); 
  }
}



