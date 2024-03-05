import 'package:flutter/material.dart';


import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

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
 OnBoardingSkip()
      ],)
    ); 
  }
}


