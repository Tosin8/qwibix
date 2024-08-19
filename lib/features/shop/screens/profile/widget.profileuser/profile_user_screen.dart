import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/screens/profile/widget.profileuser/userprofilemenu.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      appBar: const BAppBar(showBackArrow: true, title: Text('Profile'),),

      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
        child: Column(
          children: [

            // Profile Picture. 
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const BCircularImage(image: BImages.user, width: 80, height: 80,),
                  TextButton(onPressed: (){}, child: const Text('Change Profile Picture'))
                ],
              ),
            ), 

            // Details 
            const SizedBox(height: BSizes.spaceBtwItems/ 2,), 
            const Divider(), 
            const SizedBox(height: BSizes.spaceBtwItems,), 

            // heading profile info
            const BSectionHeading(title: 'Profile Information', showActionButton: false,), 
            const SizedBox(height: BSizes.spaceBtwItems,), 

           Userprofilemenu(  title: 'Name', value: 'John Doe', onPressed: () {  },), 
           Userprofilemenu(  title: 'User ID', value: 'johndoe@gmail.com', onPressed: () {  }, icon: Iconsax.copy,), 
            const SizedBox(height: BSizes.spaceBtwItems,), 
              const Divider(), 
              const SizedBox(height: BSizes.spaceBtwItems,), 
                 const BSectionHeading(title: 'Personal Information', showActionButton: false,),
                  const SizedBox(height: BSizes.spaceBtwItems,), 
           Userprofilemenu(  title: 'E-mail', value: 'johndoe@gmail.com', onPressed: () {  },), 
           Userprofilemenu(  title: 'Phone Number', value: '+234 123 456 789', onPressed: () {  },), 

           const SizedBox(height: BSizes.spaceBtwItems,), 
            const Divider(), 
              const SizedBox(height: BSizes.spaceBtwItems,), 
           Center(
            child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
           )
           
           
          ],
        ),),
      )
    );
  }
}