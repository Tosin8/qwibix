import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      appBar: BAppBar(title: Text('All Brands'), 
      showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(BSizes.defaultSpace), 
        child: Column(
          children: [

            // Heading
            BSectionHeading(title: 'Brands', showActionButton: false,),
            SizedBox(height: BSizes.spaceBtwItems), 
          ],
        ),
        ), 
        
      )
    );
  }
}