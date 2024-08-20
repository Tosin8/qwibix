
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class QuantityAddRemoveButton extends StatelessWidget {
  const QuantityAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BCircularIcon(icon: Iconsax.minus, width: 32, height: 32, size: BSizes.md,
         color: BHelperFunctions.isDarkMode(context) ? BColors.white : BColors.black,
         backgroundColor: BHelperFunctions.isDarkMode(context) ? BColors.darkGrey : BColors.light,), 
         const SizedBox(width: BSizes.spaceBtwItems,), 
         Text('2', style: Theme.of(context).textTheme.titleSmall,), 
         const SizedBox(width: BSizes.spaceBtwItems,), 
        
         // add buttons
         const BCircularIcon(icon: Iconsax.add, width: 32, height: 32, size: BSizes.md,
         color: BColors.white ,
         backgroundColor: BColors.primary,),
      ],
    );
  }
}
