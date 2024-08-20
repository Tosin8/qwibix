// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'widgets/rating_indicator.dart';

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
Row(
  children: [
    Expanded(
      flex: 3, 
      child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),
    const Expanded(
      flex: 7,
      child: Column(
        children: [
          RatingProgressIndicator(text: '5', value: 1.0,), 
          RatingProgressIndicator(text: '4', value: 0.8,), RatingProgressIndicator(text: '3', value: 0.6,), RatingProgressIndicator(text: '2', value: 0.4,), RatingProgressIndicator(text: '1', value: 0.2,), 
        ],
      ),
    )
  ],
)

          ],
        ),
        )
      )
    );
  }
}