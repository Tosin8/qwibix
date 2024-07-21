
import 'package:flutter/material.dart';
import 'package:qwibix/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/device/device_utlity.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
     top: BDeviceUtils.getAppBarHeight(), 
     right: BSizes.defaultSpace, 
     child: TextButton(
      onPressed: (){
        OnBoardingController.instance.skipPage(); 
      }, 
    child: const Text('Skip')));
  }
}
