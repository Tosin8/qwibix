
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/shop/models/tabView/burger_model.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../addtocardbtn.dart';

class BurgerproductCard extends StatelessWidget {
  const BurgerproductCard({
    super.key,  required this.Burgers,
  });

  final Burger Burgers; 

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
                 image: DecorationImage(image: AssetImage(Burgers.image), fit: BoxFit.cover), 
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
                   Text(Burgers.title, overflow: TextOverflow.ellipsis, 
                   style: Theme.of(context).textTheme.titleMedium,), 
                    const SizedBox(height: 5), 
                   Text(Burgers.description, 
                   maxLines: 2,overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium,
                   ),
                   const SizedBox(height: 5,),  
                   Text(Burgers.price,
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
                   Text(Burgers.rate),
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

