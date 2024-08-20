import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/device/device_utlity.dart';

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
      child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),
    Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Text('5', style: Theme.of(context).textTheme.bodyMedium,), 
               Expanded( 
                
                 child: SizedBox(
                  width: BDeviceUtils.getScreenWidth(context) * 0.5,
                   child: LinearProgressIndicator(
                    value: 0.5, 
                    minHeight: 11, 
                    backgroundColor: BColors.grey, 
                    borderRadius: BorderRadius.circular(7), 
                    valueColor: const AlwaysStoppedAnimation(BColors.primary),
                               ),
                 ),
               )
            ],
          )
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