import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

        // SubTotal. 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium
            
            ),
            Text('\$ 269.0', style: Theme.of(context).textTheme.bodyMedium
            
            ),
            ],
        ), 
        const SizedBox(height: BSizes.spaceBtwItems / 2,), 

        // Shipping fee. 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium
            
            ),
            Text('\$ 6.0', style: Theme.of(context).textTheme.bodyMedium
            
            ),
            ],
        ), 
        const SizedBox(height: BSizes.spaceBtwItems / 2,), 
         // Tax
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium
            
            ),
            Text('\$ 6.0', style: Theme.of(context).textTheme.bodyMedium
            
            ),
            ],
        ),
        const SizedBox(height: BSizes.spaceBtwItems / 2,), 
         // Order Total.  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium
            
            ),
            Text('\$ 6.0', style: Theme.of(context).textTheme.titleLarge
            
            ),
            ],
        ),
      ],
    );
  }
}