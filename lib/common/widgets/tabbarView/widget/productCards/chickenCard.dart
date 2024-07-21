
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/shop/models/tabView/chicken_model.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../addtocardbtn.dart';

class ChickenproductCard extends StatelessWidget {
  const ChickenproductCard({
    super.key, required this.Chickens,
  });

  final Chicken Chickens; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector( 
       onTap: () {
         
       },
        child: Row( 
         children: [
           Flexible(
             child: Container(
               width: 80, height: 80,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(image: AssetImage(Chickens.image), fit: BoxFit.cover), 
               ),
             ),
           ), 
           const SizedBox(width: BSizes.spaceBtwItems), 
           Expanded(
             child: SizedBox(
               width: 60, 
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(Chickens.title, overflow: TextOverflow.ellipsis, 
                   style: Theme.of(context).textTheme.titleMedium,), 
                    const SizedBox(height: 5), 
                   Text(Chickens.description, 
                   maxLines: 2,overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium,
                   ),
                   const SizedBox(height: 5,),  
                   Text(Chickens.price,
                    style: Theme.of(context).textTheme.titleLarge,), 
                 ],
               ),
             ),
           ), 
           const SizedBox(width: BSizes.spaceBtwItems * 8,), 
           Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               Row(
                 children: [
                   const Icon(Iconsax.star1), 
                   const SizedBox(width: 3,), 
                   Text(Chickens.rate),
                 ],
               ), 
               const SizedBox(height: BSizes.spaceBtwItems * 2,), 
               const addToCartBtn()
             ],
           )
         ],
            
            ),
      ),
    );
  }
}

