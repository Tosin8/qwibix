import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: const BAppBar(
        title: Text('Sports Shirts'), showBackArrow: true, 
      ), 
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(BSizes.defaultSpace), 
            child: Column(
              children: [
                // banner. 
                const BRoundedImage(
width: double.infinity, 
imageUrl: BImages.banner5,
applyImageRadius: true,
                ), 
                const SizedBox(height: BSizes.spaceBtwSections,), 

                // Sub Categories. 
                Column(
                  children: [

                    // Heading
                    BSectionHeading(
                      title: 'Sports Shirt', 
                      onPressed: () {
                      
                    },), 
                    const SizedBox(height: BSizes.spaceBtwItems/2,), 
                  ],
                )
              ],
            ),
            ),
        ), 
      
    ); 
  }
}