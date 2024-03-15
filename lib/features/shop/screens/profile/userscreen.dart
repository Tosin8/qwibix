import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
           SizedBox(height: BSizes.spaceBtwItems/2,), 
           Divider(), 
            SizedBox(height: BSizes.spaceBtwItems/2,), 
            BSectionHeading(title: 'Profile Information', buttonTitle: ''), 
          ],
          ),
        )
      )
    );
  }
}

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