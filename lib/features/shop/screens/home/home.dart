// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/device/device_utlity.dart';


import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const SafeArea(
      child: Scaffold( 
        body: SingleChildScrollView(
          child: Column(
            children: [
              BPrimaryHeaderContainer(
                child: Column(
                  children: [

                    // appbar
                    BHomeAppBar(), 

                    SizedBox(height: BSizes.spaceBtwSections,),

                    // search bar
                    BSearchContainer(), 

                    // categories
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

class BSearchContainer extends StatelessWidget {
  const BSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace),
      child: Container(
        
        width: BDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(BSizes.md), 
        decoration: BoxDecoration(color: BColors.white,borderRadius: BorderRadius.circular(BSizes.cardRadiusLg),
         border: Border.all(color: BColors.grey)),
      child: Row(
        children: [
          const Icon(Iconsax.search_normal, color: BColors.darkGrey), 
          const SizedBox(width: BSizes.spaceBtwItems,), 
          Text('Search', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),),);
  }
}

