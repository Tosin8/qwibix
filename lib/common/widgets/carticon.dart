
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/colors.dart';

class BCartCounterIcon extends StatelessWidget {
  const BCartCounterIcon({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Iconsax.shopping_bag, 
      color: darkMode ? Colors.white : Colors.black,),
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
            style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.white, fontSizeFactor: 0.8), 
            ), 
          )
        ),
      ), 
            ]);
  }
  
}

