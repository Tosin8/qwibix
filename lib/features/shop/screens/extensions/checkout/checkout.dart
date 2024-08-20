import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/features/shop/screens/extensions/cart/widget/cart_items.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Scaffold( 
      appBar: BAppBar(
        showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall,)
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
          children: [

            // Items in Cart. 
const CartItems(showAddRemoveButtons: false),
const SizedBox(height: BSizes.spaceBtwSections,), 

// Coupon Textfield. 
BRoundedContainer(
  showBorder: true, 
  backgroundColor: dark ? BColors.dark : BColors.white,
  padding: const EdgeInsets.only(
    top: BSizes.sm, bottom: BSizes.sm, right: BSizes.sm, left: BSizes.sm),
), 
const SizedBox(height: BSizes.spaceBtwSections,), 
            // Total.
          ],
        ),),
      )
    );
  }
}