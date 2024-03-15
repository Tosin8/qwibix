import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class userprofilemenu extends StatelessWidget {
  const userprofilemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Name', 
        style: Theme.of(context).textTheme.bodySmall,
        overflow: TextOverflow.ellipsis,), 
        Text('Tosin Ezekiel', 
        style: Theme.of(context).textTheme.bodyMedium,
        overflow: TextOverflow.ellipsis,),
        Icon(Iconsax.arrow_right_34, size: 18) , 
      ],
    );
  }
}

