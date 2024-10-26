// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/shop/models/product_model.dart';
import 'package:qwibix/utils/constants/enums.dart';
import 'package:readmore/readmore.dart';

import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/screens/extensions/checkout/checkout.dart';
import 'package:qwibix/features/shop/screens/home/product_details/widget/add2cartlayer.dart';
import 'package:qwibix/features/shop/screens/home/product_details/widget/product_attribute.dart';
import 'package:qwibix/features/shop/screens/home/product_details/widget/product_meta_data.dart';
import 'package:qwibix/features/shop/screens/home/product_reviews/product_reviews.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'product_details/widget/product_detail_image_slider.dart';
import 'product_details/widget/rating_share.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

final ProductModel product; 
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold( 
      bottomNavigationBar: const BottomAddToCart() ,
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// Image Product Slider
            ProductImageSlider(product:product),


            /// Product Details
            Padding(
              padding: const EdgeInsets.only(right: BSizes.defaultSpace, left: BSizes.defaultSpace, bottom: BSizes.defaultSpace), 
              child: Column(
                children: [

                  // RATING AND SHARE
                  const RatingAndShare(), 
                  

                  // PRICE,TITLE, STOCK AND BRAND
                   ProductMetaData(product: product,), 

                  // ATTRIBUTES
                  if(product.productType == ProductType.variable.toString())
                   ProductAttribute(product: product,), 
                  if(product.productType == ProductType.variable.toString())  const SizedBox(height: BSizes.spaceBtwSections,), 

                  // CHECKOUT BUTTON
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () => Get.to(() => const CheckoutScreen()),
                     child: 
                     const Text('Checkout',)),
                  ),
                   const SizedBox(height: BSizes.spaceBtwItems,), 

                  // DESCRIPTION
                  const BSectionHeading(title: 'Description', showActionButton: false,), 
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                  ReadMoreText(
product.description ?? '',  
trimLines: 2, trimMode: TrimMode.Line,  trimCollapsedText: ' Show more ', trimExpandedText:  ' Less ', moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800), lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),

                  ), 

                  // REVIEWS
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                  const Divider(), 
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const BSectionHeading(title: 'Reviews(199)' , showActionButton: false,), 
                       IconButton(
                        onPressed: () => Get.to(() => const ProductReviewsScreen()),
                        
                         icon: const Icon(Iconsax.arrow_right_3, size: 18)),
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
