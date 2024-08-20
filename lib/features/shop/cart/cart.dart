import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'widget/add_remove_quantity.dart';
import 'widget/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      
      appBar: BAppBar(
        showBackArrow: true,
        title: Text('Cart', 
        style: Theme.of(context).textTheme.headlineSmall,), 
        
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(BSizes.defaultSpace), 
          child: ListView.separated(
            itemCount: 8, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: BSizes.spaceBtwSections,),
            itemBuilder: (_,index) =>  const Column(
              children: [
                CartItem(), 
                SizedBox(height: BSizes.spaceBtwItems,), 

                Row(
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
            
            
             
             ),
        ), 
   
   bottomNavigationBar: Padding(
     padding: const EdgeInsets.all(BSizes.defaultSpace),
     child: ElevatedButton(
      
      onPressed: (){},
       child: const Text('Checkout  \$256.00')),
   ),
    );
  }
}
