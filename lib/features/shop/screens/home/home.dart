// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';

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
                    BSearchContainer(text: 'Search products',), 
 SizedBox(height: BSizes.spaceBtwSections,),
                    // categories

                    Padding(
                      padding: EdgeInsets.only(left: BSizes.defaultSpace), 
                    child: Column(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BSectionHeading(title: 'Popular Categories',
                        showActionButton: false,
                        textColor: BColors.white,),
                        
                      ],
                    ),)
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
