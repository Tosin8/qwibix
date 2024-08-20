import 'package:flutter/material.dart';
import 'package:qwibix/features/shop/screens/home/product_reviews/widgets/rating_bar_indicator.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Column( 
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              const CircleAvatar(backgroundImage: AssetImage(BImages.userProfileImage1),), 
              const SizedBox(width: BSizes.spaceBtwItems,), 
              Text('John Doe', 
              style: Theme.of(context).textTheme.titleLarge,), 
            ],),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert), 
          ), 
          ],
        ), 
        const SizedBox(height: BSizes.spaceBtwItems,),

        // Reviews
       Row(
          children: [
            const BRatingBarIndicator(rating: 4), 
            const SizedBox(width: BSizes.spaceBtwItems), 
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ), 
        const SizedBox(height: BSizes.spaceBtwItems,), 
        const ReadMoreText('The user interface of the app is quite intiuitive. I was able to navigate and make purchase seamlessly. Great Job! ', 
        trimLines: 1, 
        trimMode: TrimMode.Line,
        trimExpandedText: 'show less',
        trimCollapsedText: 'show more',
        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary),
        lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary),
        ), 
        const SizedBox(height: BSizes.spaceBtwItems,),

        // Company Review. 
        BRoundedContainer(
          backgroundColor: dark ? BColors.darkerGrey : BColors.grey, 
          child:  Padding(
            padding: const EdgeInsets.all(BSizes.md), 
             child: Column(
               children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Qwibix', style: Theme.of(context).textTheme.titleMedium,),
                            Text('02 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,), 
                   ],
                 ),
                 const SizedBox(height: BSizes.spaceBtwItems,), 
                  const ReadMoreText('The user interface of the app is quite intiuitive. I was able to navigate and make purchase seamlessly. Great Job! ', 
        trimLines: 2, 
        trimMode: TrimMode.Line,
        trimExpandedText: 'show less',
        trimCollapsedText: 'show more',
        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary),
        lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: BColors.primary),
        ), 
          
               ],
             )),
        ), 
        const SizedBox(height: BSizes.spaceBtwSections,), 
        
      ],
    );
  }
}