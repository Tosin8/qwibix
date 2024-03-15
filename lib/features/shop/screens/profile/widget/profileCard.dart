import 'package:bellymax/features/shop/screens/profile/userscreen.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class profileCard extends StatelessWidget {
  const profileCard({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        child: Container(
          
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/user.png'))),
        ),
      ), 
      title: Text('Tosin Ezekiel', 
      style: Theme.of(context).textTheme.headlineSmall!.apply(color: dark ? Colors.white: BColors.black),
      ),
      subtitle: Text('tosinezekiel8@gmail.com', 
      style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black),),
      trailing: GestureDetector(
    onTap: () {
      Get.to(() => ProfileUserScreen()); 
    },
    
        child: Icon(Iconsax.edit, color: dark? Colors.white: Colors.black,)),
    );
  }
}