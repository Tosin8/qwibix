import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return ListView.separated( 
      separatorBuilder: (context, index) => const SizedBox(height: BSizes.spaceBtwItems,), 
      itemCount: 4,
      itemBuilder: (_, index) => 
      BRoundedContainer(
        padding: const EdgeInsets.all(BSizes.md),
        showBorder: true, 
        backgroundColor:  dark ? BColors.dark : BColors.light,
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
      
            // Row 1 
            Row(
              children: [
      
                // ship
                const Icon(Iconsax.ship), 
                const SizedBox(width: BSizes.spaceBtwItems,), 
      
                /// 2 - status and date. 
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: BColors.primary, fontWeightDelta: 1),),
                      Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ), 
      
                // 3 - Icon. 
                IconButton(onPressed: (){}, 
                icon: const Icon(Iconsax.arrow_right_34, size: BSizes.iconSm))
              ],
            ), 
      
      const SizedBox(height: BSizes.spaceBtwItems,), 
            // Row - 2
              Row(
                children: [
                  Expanded(
                    child: Row(
                    children: [
                    
                      //tag
                      const Icon(Iconsax.tag), 
                      const SizedBox(width: BSizes.spaceBtwItems,), 
                    
                      /// 2 - status and date. 
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('#123', style: Theme.of(context).textTheme.headlineSmall,), 
                          ],
                        ),
                      ), 
                    
                      // 3 - Icon. 
                      Expanded(
                        flex: 2,
                        child: 
                      Row(
                        children: [
                          const Icon(Iconsax.calendar), 
                          const SizedBox(width: BSizes.spaceBtwItems ,), 
      
                          Expanded(child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall,)
                            ],
                          ))
                        ],
                      ))
                     
                    ],
                              ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}