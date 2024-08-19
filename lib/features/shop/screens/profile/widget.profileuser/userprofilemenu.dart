// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class Userprofilemenu extends StatelessWidget {
  const Userprofilemenu({
    Key? key,
    required this.title,
    required this.value,
    required this.onPressed,
    this.icon = Iconsax.arrow_right_34,
  }) : super(key: key);

final String title; 
final String value; 
final VoidCallback onPressed; 
final IconData icon;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, 
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwItems / 1.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex:3, 
              child: Text(title, 
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,),
            ), 
            Expanded(
              flex: 5,
              child: Text(value, 
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,),
            ),
            Expanded(child: Icon(icon, size: 18,)) , 
          ],
        ),
      ),
    );
  }
}

