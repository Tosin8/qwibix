import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      appBar: BAppBar(
        title: Text('Sports Shirts'), showBackArrow: true, 
      ), 
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(BSizes.defaultSpace), 
            child: Column(
              children: [
                // banner. 
                BRoundedImage(
width: double.infinity, 
imageUrl: BImages.banner5,
applyImageRadius: true,
                )
              ],
            ),
            ),
        ), 
      
    ); 
  }
}