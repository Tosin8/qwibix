import 'package:flutter/material.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'product_details/widget/product_detail_image_slider.dart';

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
            ProductImageSlider(dark: dark)
          ],
        ),
      )
    );
  }
}
