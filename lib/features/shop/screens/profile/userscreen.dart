import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'widget.profileuser/userprofilemenu.dart';
import 'widget.profileuser/userprofilephoto.dart';

class ProfileUserScreen extends StatelessWidget {
  const ProfileUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Scaffold( 
      appBar: AppBar(
        title: Text('Profile', style: Theme.of(context).textTheme.headlineMedium!.apply(color: dark ? Colors.white : Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
          children: [
          
          // Profile Photo
            userProfilePhoto(dark: dark), 
           
           // Details
           const SizedBox(height: BSizes.spaceBtwItems/2,), 
           const Divider(), 
            const SizedBox(height: BSizes.spaceBtwItems/2,), 
            const BSectionHeading(title: 'Profile Information', buttonTitle: ''), 
              const SizedBox(height: BSizes.spaceBtwItems,), 
              userprofilemenu()
          ],
          ),
        )
      )
    );
  }
}

