import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../features/shop/models/tabView/sandwish_model.dart';
import '../addtocardbtn.dart';

class SandWishproductCard extends StatelessWidget {
  const SandWishproductCard({
    super.key, required this.SandWishs,
  });

  final SandWish SandWishs; 

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
                 image: DecorationImage(image: AssetImage(SandWishs.image), fit: BoxFit.cover), 
               ),
             ),
           ), 
           SizedBox(width: BSizes.spaceBtwItems), 
           Expanded(
             child: Container(
               width: 60, 
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(SandWishs.title, overflow: TextOverflow.ellipsis, 
                   style: Theme.of(context).textTheme.titleMedium,), 
                    SizedBox(height: 5), 
                   Text(SandWishs.description, 
                   maxLines: 2,overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium,
                   ),
                   SizedBox(height: 5,),  
                   Text(SandWishs.price,
                    style: Theme.of(context).textTheme.titleLarge,), 
                 ],
               ),
             ),
           ), 
           SizedBox(width: BSizes.spaceBtwItems * 8,), 
           Column(
             mainAxisSize: MainAxisSize.min,
             children: [
               Row(
                 children: [
                   Icon(Iconsax.star1), 
                   SizedBox(width: 3,), 
                   Text(SandWishs.rate),
                 ],
               ), 
               SizedBox(height: BSizes.spaceBtwItems * 2,), 
               addToCartBtn()
             ],
           )
         ],
            
            ),
      ),
    );
  }
}
