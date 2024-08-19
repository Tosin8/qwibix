import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Userprofilemenu extends StatelessWidget {
  const Userprofilemenu({
    super.key, required this.name, required this.middleName, required this.press,
  });

final String name; 
final String middleName; 
final VoidCallback press; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex:3, 
            child: Text(name, 
            style: Theme.of(context).textTheme.bodySmall,
            overflow: TextOverflow.ellipsis,),
          ), 
          Expanded(
            flex: 5,
            child: Text(middleName, 
            style: Theme.of(context).textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,),
          ),
          const Expanded(child: Icon(Iconsax.arrow_right_34, size: 18)) , 
        ],
      ),
    );
  }
}

