import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/features/shop/screens/extensions/checkout/checkout.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import 'widget/cart_items.dart';

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
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(BSizes.defaultSpace), 
          child: CartItems(),
        ), 
   
   bottomNavigationBar: Padding(
     padding: const EdgeInsets.all(BSizes.defaultSpace),
     child: ElevatedButton(
      
      onPressed: () => Get.to(() => const CheckoutScreen()),
       child: const Text('Checkout  \$256.00')),
   ),
    );
  }
}
