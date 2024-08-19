import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold( 
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Image Product Slider
            BCurvedEdgeWidget(
              child: Container( color: dark ? BColors.darkerGrey : BColors.light,
              child: Stack(
                children: [

                  // Main Image Large 
                  const SizedBox(
                    height: 400, 
                    child: Padding(
                      padding: EdgeInsets.all(BSizes.productImageRadius), 
                      child: Center(child: Image(image: AssetImage(BImages.productImage1))),
                    ),
                  ), 

                  // Image Slider. 
                  BRoundedImage(
                    width: 80, 
                    backgroundColor: dark ? BColors.dark : BColors.white,
                    imageUrl: BImages.productImage3), 
                ],
              )
              ),
            )
          ],
        ),
      )
    );
  }
}