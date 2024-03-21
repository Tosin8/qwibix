import 'package:bellymax/features/authentication/controllers/forget_pwd/forget_password_controller.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'reset_pwd.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key, });

   

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return 
    Scaffold(
      appBar: AppBar(), 
      body: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          

          /// Headings 
          Text(BTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,), 
          const SizedBox(height: BSizes.spaceBtwItems,), 
          Text(BTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,), 
          const SizedBox(height: BSizes.spaceBtwSections * 2,),
          

          /// Text Field 
          Form(
            key: controller.forgetPasswordFormKey, 
            child: TextFormField(
              controller: controller.email, 
              validator: BValidator.validateEmail,
              decoration: const InputDecoration(
                labelText: BTexts.email, 
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
          ), 
          const SizedBox(height: BSizes.spaceBtwSections,), 
          
          /// Submit Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: ()
            => controller.sendPasswordResetEmail(),
              child: const Text(BTexts.submit)),
          )
        ],
      ),)
    ); 
  }
}