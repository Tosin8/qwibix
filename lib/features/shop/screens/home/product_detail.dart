import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/screens/home/product_details/widget/product_attribute.dart';
import 'package:qwibix/features/shop/screens/home/product_details/widget/product_meta_data.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

import 'product_details/widget/product_detail_image_slider.dart';
import 'product_details/widget/rating_share.dart';

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
            const ProductImageSlider(),


            /// Product Details
            Padding(
              padding: const EdgeInsets.only(right: BSizes.defaultSpace, left: BSizes.defaultSpace, bottom: BSizes.defaultSpace), 
              child: Column(
                children: [

                  // RATING AND SHARE
                  const RatingAndShare(), 
                  

                  // PRICE,TITLE, STOCK AND BRAND
                  const ProductMetaData(), 

                  // ATTRIBUTES
                  const ProductAttribute(), 
                  const SizedBox(height: BSizes.spaceBtwSections,), 

                  // CHECKOUT BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){},
                     child: 
                     const Text('Checkout',)),
                  ),
                   const SizedBox(height: BSizes.spaceBtwItems,), 

                  // DESCRIPTION
                  const BSectionHeading(title: 'Description', showActionButton: false,), 
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                  const ReadMoreText(
'This is a product description for blue nike sleeve . There are many more of it that will be added later. This is one of the best product, created and made sorely', 
trimLines: 2, trimMode: TrimMode.Line,  trimCollapsedText: ' Show more ', trimExpandedText:  ' Less ', moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800), lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),

                  ), 

                  // REVIEWS
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                  const Divider(), 
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const BSectionHeading(title: 'Reviews(199)' , showActionButton: false,), 
                       IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3, size: 18)),
                    ],
                  ), 
                 
                  const SizedBox(height: BSizes.spaceBtwSections,), 
                ],
              ), 
            ), 
          ],
        ),
      )
    );
  }
}
