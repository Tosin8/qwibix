import 'package:bellymax/features/personalization/controllers/user_controller.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class userProfilePhoto extends StatelessWidget {
  const userProfilePhoto({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance; 
    return SizedBox(
      width: double.infinity,
      child: Column(
      
        children: [
          Obx((){
            final networkImage = controller.user.value.profilePicture; 
            final  image  = networkImage.isNotEmpty ? NetworkImage(networkImage) : const AssetImage('assets/images/user.png'); 
            return
             CircleAvatar(
              radius: 40, 
              child: Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                  image: image as ImageProvider, fit: BoxFit.cover), 
                  ),
                  ),
            ); 
   } ),
           const SizedBox(height: BSizes.spaceBtwItems,), 
      GestureDetector(
        onTap:() => controller.uploadUserProfilePicture(), 
        child: Text('Change Profile Photo',
         style: Theme.of(context).textTheme.bodyMedium!.apply(
          color: dark ? Colors.white : Colors.black),
         )
         ),
        ],
      ),
    );
  }
}