// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/features/shop/screens/extensions/cart/widget/add_remove_quantity.dart';

import '../../../../../../utils/constants/sizes.dart';
import 'cart_item_card.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    Key? key,
this.showAddRemoveButtons = true,
  }) : super(key: key);

  final bool showAddRemoveButtons; 

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: BSizes.spaceBtwSections,),
      itemBuilder: (_,index) =>  Column(
        children: [
          const CartItemCard(), 
       if(showAddRemoveButtons)   const SizedBox(height: BSizes.spaceBtwItems,), 
    
    // add remove buttons row with total price. 
        
        if(showAddRemoveButtons)
         const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
    Row(
     
      children: [
        SizedBox(width: 70,), 
                
                  QuantityAddRemoveButton(),
      ],
    ), 
    // Product Price. 
              BProductPriceText(price: '256'), 
            ],
          )
        ],
      ),
      
      
       
       );
  }
}
