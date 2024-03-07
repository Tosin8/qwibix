import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(), 
      body: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          

          /// Headings 
          Text(BTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,), 
          const SizedBox(height: BSizes.spaceBtwItems,), 
          Text(BTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,), 
          const SizedBox(height: BSizes.spaceBtwSections * 2,),
          

          /// Text Field 
          TextFormField(
            decoration: const InputDecoration(
              labelText: BTexts.email, 
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          )
          
          /// Submit Button
        ],
      ),)
    ); 
  }
}