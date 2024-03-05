import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
     top: BDeviceUtils.getAppBarHeight(), 
     right: BSizes.defaultSpace, 
     child: TextButton(onPressed: (){}, 
    child: Text('Skip')));
  }
}
