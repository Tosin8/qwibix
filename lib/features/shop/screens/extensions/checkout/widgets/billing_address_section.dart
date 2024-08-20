import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        BSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: () {
          
        },), 
        const SizedBox(height: BSizes.spaceBtwItems / 2,), 
        Row(
          children: [
            BRoundedContainer(
              width: 60, height: 35, backgroundColor: dark ? BColors.light: BColors.white,
              padding: const EdgeInsets.all(BSizes.sm),
              child: const Image(image: AssetImage(BImages.paypal,), fit: BoxFit.contain,),
            ), 
            const SizedBox(width: BSizes.spaceBtwItems / 2,), 
          ],
        )
      ],
    );
  }
}