import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class userProfilePhoto extends StatelessWidget {
  const userProfilePhoto({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
      
        children: [
          CircleAvatar(
            radius: 40, child: Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/user.png'))),),
          ),
           const SizedBox(height: BSizes.spaceBtwItems,), 
      GestureDetector(
        onTap:() {
          
        },
        child: Text('Change Profile Photo', style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? Colors.white : Colors.black),)),
        ],
      ),
    );
  }
}