import 'package:bellymax/common/widgets/texts/brandTitleText.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/enums.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandTitleVerifyIcon extends StatelessWidget {
  const BrandTitleVerifyIcon({super.key, 
  required this.title, 
  this.maxLines = 1, 
  this.textColor,
   this.iconColor  = BColors.primary,
   this.textAlign = TextAlign.center, 
   this.brandTextSize = TextSizes.small, 
   });

  final String title; 
  final int maxLines; 
  final Color? textColor, iconColor; 
  final TextAlign? textAlign; 
  final TextSizes brandTextSize; 

  @override
  Widget build(BuildContext context) {
    return Row( 
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: 
        BrandTitleText (title: title, color: textColor, maxLines: maxLines, textAlign: textAlign, brandTextSizes: brandTextSize,)), 
        const SizedBox(width: BSizes.xs,), 
        Icon(Iconsax.verify5, color: iconColor, size: BSizes.iconXs)
      ],
    );
  }
}