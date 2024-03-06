import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BFormDivider extends StatelessWidget {
  const BFormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Flexible(
          child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
          thickness: 1.5, indent: 60, endIndent: 5,),
        ),
        Text(BTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
         Flexible(
          child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
          thickness: 1.5, indent: 5, endIndent: 60,),
        )
      ]
    );
  }
}
