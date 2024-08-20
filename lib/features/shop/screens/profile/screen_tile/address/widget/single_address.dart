import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

final bool selectedAddress;
  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return BRoundedContainer(
  width: double.infinity, 
  showBorder: true, 
  borderColor: selectedAddress ?
  
   Colors.transparent:  dark ?   BColors.darkGrey : BColors.grey, 
  backgroundColor: selectedAddress ? BColors.primary.withOpacity(0.5): Colors.transparent, 
  margin: const EdgeInsets.only(bottom: BSizes.spaceBtwItems), 
 
  child: Stack(
    children: [
      Positioned( 
        right: 5, top: 0, 
        child: Icon(
        selectedAddress ? Iconsax.tick_circle5 : null, 
        color: selectedAddress 
        ? dark 
        ? BColors.light : BColors.dark : null,
        ),
      ) , 
       Column(
        children: [
Text('2312 Timmy Cavas, South Lians, Maine, 87222, USA', 
maxLines: 2, 
overflow: TextOverflow.ellipsis, 
style: Theme.of(context).textTheme.titleLarge,), 
const SizedBox(height: BSizes.sm /2,), 

        ],
      )
    ],
  )
);

  }
}