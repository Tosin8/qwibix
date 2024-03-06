// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';

class BFormDivider extends StatelessWidget {
   BFormDivider({
    Key? key,
    required this.dark, required this.DividerText, TextStyle? style, 
  }) : super(key: key);

  final bool dark;
  final String DividerText; 

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Flexible(
          child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
          thickness: 1.5, indent: 60, endIndent: 5,),
        ),
        Text(DividerText), 
         Flexible(
          child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
          thickness: 1.5, indent: 5, endIndent: 60,),
        )
      ]
    );
  }
}
