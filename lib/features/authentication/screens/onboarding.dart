import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override 
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack (
        children: [
/// Horizontal Scrollable Pages 
 PageView(
  children: [
    Column(
      children: [
        Image(
          width: BHelperFunctions.screenWidth() * 0.8,
          height: BHelperFunctions.screenHeight() * 0.6, 
          image: const AssetImage(BImages.onBoardingImage1)),

          Text(BTexts.onBoardingTitle1, 
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,), 

SizedBox(height: BSizes.spaceBtwItems), 

          Text(BTexts.onBoardingSubTitle1, 
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,)
      ],
    )
  ],
 )
      ],)
    ); 
  }
}