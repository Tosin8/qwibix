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
      padding: const EdgeInsets.all(BSizes.md), 
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('John Doe', 
          maxLines: 1, 
          overflow: TextOverflow.ellipsis, 
          style: Theme.of(context).textTheme.titleLarge,
          ), 
          const SizedBox(height: BSizes.sm /2), 
          const Text('(+1) 123 456 7890', maxLines: 1, overflow: TextOverflow.ellipsis,), 
          const SizedBox(height: BSizes.sm /2), 

const Text('2312 Timmy Cavas, South Lians, Maine, 87222, USA', 

softWrap: true,
), 
const SizedBox(height: BSizes.sm /2,), 

        ],
      )
    ],
  )
);

  }
}