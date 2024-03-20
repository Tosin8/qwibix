import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
              userprofilemenu(
                name: 'Name', middleName: 'Tosin Ezekiel', press: () {  },
                
              ), 
              const SizedBox(height: BSizes.spaceBtwItems), 
               userprofilemenu(
                name: 'Username', middleName: 'Tosin8', press: () {  },
                
              ),

              // Personal Information
               const SizedBox(height: BSizes.spaceBtwSections), 
           const Divider(), 
            const SizedBox(height: BSizes.spaceBtwItems/2,), 
           const BSectionHeading(title: 'Personal Information', buttonTitle: ''), 
              const SizedBox(height: BSizes.spaceBtwItems,), 
              userprofilemenu(
                name: 'Email', middleName: 'Tosinezekiel8@gmail.com', press: () {  },
              ),  
              const SizedBox(height: BSizes.spaceBtwItems,), 
              userprofilemenu(
                name: 'Phone No', middleName: '+234 812 345 678', press: () {  },
              ), const SizedBox(height: BSizes.spaceBtwItems,), 
              userprofilemenu(
                name: 'Gender', middleName: 'Male', press: () {  },
              ),  

              // close account
               const SizedBox(height: BSizes.spaceBtwSections),
           const Divider(),
            const SizedBox(height: BSizes.spaceBtwItems/2,),
           
              const SizedBox(height: BSizes.spaceBtwItems,),
             Center(
              child: TextButton(
                onPressed: () {},
                
                child: Text('Close Account', style: Theme.of(context).textTheme.bodyMedium!.apply(color:  Colors.red),),
              ),
             )
          ],
          ),
        )
      )
    );
  }
}

