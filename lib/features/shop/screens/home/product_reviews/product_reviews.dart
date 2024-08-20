// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'widgets/overall_product_rating.dart';
import 'widgets/rating_bar_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      // appbar
      appBar: const BAppBar(
        title: Text('Product Reviews & Ratings'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(BSizes.defaultSpace),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Rating and Reviews are verified and are from people who use the  same type of device that you use',), 
            const SizedBox(height: BSizes.spaceBtwItems,), 

            // product product ratings. 
const OverallProductRating(), 
const BRatingBarIndicator(rating: 3.5,), 
Text('12,611', style: Theme.of(context).textTheme.bodySmall,), 
const SizedBox(height: BSizes.spaceBtwSections,), 

// User Reviews List. 

          ],
        ),
        )
      )
    );
  }
}
