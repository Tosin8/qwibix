
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class BCartCounterIcon extends StatelessWidget {
  const BCartCounterIcon({
    Key? key,
    required this.iconColor,
    required this.onPressed,
  }) : super(key: key);

final Color iconColor; 
final VoidCallback onPressed; 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: (){}, 
        icon: const Icon(Iconsax.shopping_bag),
         color: BColors.white, ),
         Positioned(
          right: 0, 
          child: Container(
            width: 18, height: 18, 
            decoration: BoxDecoration(
              color: BColors.black,  
              borderRadius: BorderRadius.circular(100), 
            ),
            child: Center(
              child: Text('2', 
              style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.white, fontSizeFactor: 0.8),)
            )
          ))
    
      ],
    );
  }
}
