// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'widgets/overall_product_rating.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold( 

      // appbar
      appBar: BAppBar(
        title: Text('Product Reviews & Ratings'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: 
        EdgeInsets.all(BSizes.defaultSpace),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rating and Reviews are verified and are from people who use the  same type of device that you use',), 
            SizedBox(height: BSizes.spaceBtwItems,), 

            // product product ratings. 
OverallProductRating()

          ],
        ),
        )
      )
    );
  }
}