
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class CouponField extends StatelessWidget {
  const CouponField({
    super.key,
   
  });

  

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return BRoundedContainer(
      showBorder: true, 
      backgroundColor: dark ? BColors.dark : BColors.white,
      padding: const EdgeInsets.only(
        top: BSizes.sm,
         bottom: BSizes.sm, 
         right: BSizes.sm, 
         left: BSizes.md),
         child: Row(
          children: [
    
            // TextField 
            Flexible(child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter coupon code', 
                border: InputBorder.none,
                focusedBorder: InputBorder.none, 
                enabledBorder: InputBorder.none, 
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none, 
              ),
            )), 
    
            // Apply Button.
            SizedBox(
              width: 80,
              child: ElevatedButton(onPressed: (){}, 
              style: ElevatedButton.styleFrom(
                foregroundColor: dark ? BColors.white.withOpacity(0.5) : BColors.dark.withOpacity(0.5), 
                backgroundColor: Colors.grey.withOpacity(0.2), 
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply')))
          ],
         ),
    );
  }
}