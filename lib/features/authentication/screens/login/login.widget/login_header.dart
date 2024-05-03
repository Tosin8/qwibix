
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

class BLoginHeader extends StatelessWidget {
  const BLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30,), 
        Image(
          height: 100,
          image: AssetImage(dark ? BImages.darkApplogo : BImages.lightApplogo)), 
          Text(BTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,), 
          const SizedBox(height: BSizes.sm), 
          Text(BTexts.loginSubTitle, style: Theme.of(context).textTheme.titleLarge,),
      ],
    );
  }
}