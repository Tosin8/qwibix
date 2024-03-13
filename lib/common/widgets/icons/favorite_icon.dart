import 'package:bellymax/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BCircularIconFav extends StatelessWidget {
  const BCircularIconFav({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), 
        color: dark ? BColors.black.withOpacity(0.9) : BColors.white.withOpacity(0.9), 
      ), 
      child: IconButton(
        onPressed: (){},
       icon: Icon(Iconsax.heart5),
    ));
  }
}