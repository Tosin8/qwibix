
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/personalization/controllers/user_controller.dart';
import 'package:qwibix/features/shop/screens/profile/userscreen.dart';
import 'package:qwibix/utils/constants/colors.dart';

class profileCard extends StatelessWidget {
  const profileCard({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance; 
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        child: Container(
          
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/content/user.png'))),
        ),
      ), 
      title: Text(controller.user.value.fullName, 
      style: Theme.of(context).textTheme.headlineSmall!.apply(color: dark ? Colors.white: BColors.black),
      ),
      subtitle: Text(controller.user.value.email, 
      style: Theme.of(context).textTheme.bodySmall!.apply(color: dark ? Colors.white : Colors.black),),
      trailing: GestureDetector(
    onTap: () {
      Get.to(() => const ProfileUserScreen()); 
    },
    
        child: Icon(Iconsax.edit, color: dark? Colors.white: Colors.black,)),
    );
  }
}