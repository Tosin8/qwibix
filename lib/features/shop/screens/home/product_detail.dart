import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'product_details/widget/product_detail_image_slider.dart';
import 'product_details/widget/rating_share.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return const Scaffold( 
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Image Product Slider
            ProductImageSlider(),


            /// Product Details
            Padding(
              padding: EdgeInsets.only(right: BSizes.defaultSpace, left: BSizes.defaultSpace, bottom: BSizes.defaultSpace), 
              child: Column(
                children: [

                  // RATING AND SHARE
                  RatingAndShare(), 
                  

                  // PRICE,TITLE, STOCK AND BRAND

                  // ATTRIBUTES

                  // CHECKOUT BUTTON

                  // DESCRIPTION

                  // REVIEWS
                ],
              ), 
            ), 
          ],
        ),
      )
    );
  }
}
