import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'widget/userprofiletile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              
              // Header
              BPrimaryHeaderContainer(child: Column(
                children: [
                  //AppBar
                  BAppBar(title: Text('Profile', style: Theme.of(context).textTheme.headlineMedium!.apply(color: BColors.white),)), 
                  const SizedBox(height: BSizes.spaceBtwItems,), 

                  // Profile Card
                   const UserProfileTile(), 
                  const SizedBox(height: BSizes.spaceBtwSections,), 
                ],
              )), 

              const Padding(padding: EdgeInsets.all(BSizes.defaultSpace), 
              child: Column(
                children: [

                  // Account Setting. 
                  BSectionHeading(title: 'Account Setting' , showActionButton: false,),
                  SizedBox(height: BSizes.spaceBtwItems,), 
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}