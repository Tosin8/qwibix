import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){},),
        Text('John Doe', style: Theme.of(context).textTheme.bodyLarge,), 
        const SizedBox(height: BSizes.spaceBtwItems / 2,), 
         Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16), 
            const SizedBox(width: BSizes.spaceBtwItems,), 
            Text('+1 123 456 7890', style: Theme.of(context).textTheme.bodyMedium,), 
          ],
        ), 

        const SizedBox(height: BSizes.spaceBtwItems / 2,), 
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16), 
            const SizedBox(width: BSizes.spaceBtwItems,), 
            Expanded(child: Text('South Liana, Maine 8744, USA', style: Theme.of(context).textTheme.bodyMedium,
            softWrap: true,
            ),)
          ],
        )
      ],
    );
  }
}