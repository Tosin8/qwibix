import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/utils/constants/sizes.dart';

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
            itemCount: 4, shrinkWrap: true, physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: BSizes.spaceBtwSections,),
            itemBuilder: (_,index) => const Column(
              children: [
                CartItem()
              ],
            ),
            
            
             
             ),
        )
    );
  }
}
