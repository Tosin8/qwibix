
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/device/device_utlity.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BSearchContainer extends StatelessWidget {
  const BSearchContainer({
    Key? key,
    required this.text,
    this.icon = Iconsax.search_normal,
     this.showBorder = true, 
      this.showBackground = true,
  }) : super(key: key);

  final String text; 
  final IconData? icon; 
  final bool showBackground, showBorder; 

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace),
      child: Container(
        
        width: BDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(BSizes.md), 
        decoration: BoxDecoration(
          color: showBackground ? dark ? BColors.dark:  BColors.light : Colors.transparent,borderRadius: BorderRadius.circular(BSizes.cardRadiusLg),
         border: showBorder ? Border.all(color: BColors.grey) : null),
      child: Row(
        children: [
           Icon(icon, color: BColors.darkGrey), 
          const SizedBox(width: BSizes.spaceBtwItems,), 
          Text(text, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),),);
  }
}

