import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/chips/choice_chips.dart';
import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/common/widgets/texts/product_title_text.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Column(
      children: [

// Selected attributes pricing and description. 
BRoundedContainer(
  padding:  const EdgeInsets.all(BSizes.md),
  backgroundColor: dark ? BColors.darkerGrey: BColors.grey,
  child: Column(
    children: [
      /// title, price and stock status. 
      Row(
        children: [
          const BSectionHeading(title: 'Variation', showActionButton: false,), 
          const SizedBox(width: BSizes.spaceBtwItems,), 
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   const BProductTitleText(title: 'price   :   ', smallSize: true), 
                  // actual price. 
                  Text('\$25', 
                  style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                  ), 
                  const SizedBox(width: BSizes.spaceBtwItems,), 
              
                  // Sales price
                  const BProductPriceText(price: '20'), 
                
                ],
              ),


              // Stock
              Row(
                children: [
                  const BProductTitleText(title: 'Stock : ', smallSize: true,), 
                  Text('In Stock', style: Theme.of(context).textTheme.titleMedium!.apply(color: dark ? BColors.white : BColors.black),),
                ],
              )
            ],
          )
        ],
      ), 

      // Variation Description.
      const BProductTitleText(
        title: 'This is the description of the Product and it can go up to max 4 lines',
         smallSize: true,
          maxLines: 4,),

    ],
  ),
),
     
     const SizedBox(height: BSizes.spaceBtwItems,), 

     // attributes. 
       Column(
      children: [
        const BSectionHeading(title: 'Colors', showActionButton: false,), 
        const SizedBox(height: BSizes.spaceBtwItems / 2,), 
        BChoiceChip(text: 'Green', selected: true, onSelected: (value) {
          
        },),
          BChoiceChip(text: 'Blue', selected: false,onSelected: (value) {
          
        },),  BChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {
          
        },),
      ],
     ), 

       Column(
      children: [
        const BSectionHeading(title: 'Sizes', showActionButton: false,), 
        const SizedBox(height: BSizes.spaceBtwItems / 2,), 
        BChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {
          
        },),
          BChoiceChip(text: 'EU 35', selected: false,onSelected: (value) {
          
        },),  BChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {
          
        },),
      ],
     ), 
      ],
    );
  }
}
