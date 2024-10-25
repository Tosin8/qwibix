import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/success_screen/success_screen.dart';
import 'package:qwibix/features/shop/screens/extensions/cart/widget/cart_items.dart';
import 'package:qwibix/navigation_menu.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'widgets/billing_address_section.dart';
import 'widgets/billing_amount_section.dart';
import 'widgets/billing_payment_section.dart';
import 'widgets/coupon_field.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return  Scaffold( 
      appBar: BAppBar(
        showBackArrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall,)
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
          children: [

            // Items in Cart. 
const CartItems(showAddRemoveButtons: false),
const SizedBox(height: BSizes.spaceBtwSections,), 

// Coupon Textfield. 
const CouponField(), 
const SizedBox(height: BSizes.spaceBtwSections,), 

// Billing Section. 
BRoundedContainer(
  showBorder: true, 
  backgroundColor: dark ? BColors.black : BColors.white,
   padding: const EdgeInsets.only(
        top: BSizes.sm,
         bottom: BSizes.sm, 
         right: BSizes.sm, 
         left: BSizes.md),
  child: const Column(
    children: [

      // Pricing
      BillingAmountSection(), 
      SizedBox(height: BSizes.spaceBtwItems,), 

      // divider 
      Divider(), 
      SizedBox(height: BSizes.spaceBtwItems,), 

      // Payment Mehtod
      BillingPaymentSection(), 
 SizedBox(height: BSizes.spaceBtwItems,), 
      // Address. 
      BillingAddressSection(), 
    ],
  ),
)

            // Total.
          ],
        ),),
      ), 
    bottomNavigationBar: Padding(
     padding: const EdgeInsets.all(BSizes.defaultSpace),
     child: ElevatedButton(
      
      onPressed: () => Get.to(() =>  SuccessScreen(

image: BImages.successfulPaymentIcon, 
title: 'Payment Successful',
subTitle: 'Your order will be shipped soon', 
onPressed: () => Get.offAll(() => const NavigationMenu()), 


      )),
       child: const Text('Pay  \$256.00')),
   ),
    );
  }
}
