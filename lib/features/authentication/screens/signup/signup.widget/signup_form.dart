




import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../verify_email.dart';

class signUpForm extends StatelessWidget {
  const signUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
      children: [
    Row(
      
      children: [
        Expanded(
          child: TextFormField(
            textInputAction: TextInputAction.next, 
            keyboardType: TextInputType.name,
            
            expands: false,
            decoration: const InputDecoration(
              labelText: BTexts.firstName, prefixIcon: Icon(Iconsax.user), 
            ),
          ),
        ), 
        const SizedBox(width: BSizes.spaceBtwInputFields,), 
          Expanded(
          child: TextFormField(
             textInputAction: TextInputAction.next, 
            keyboardType: TextInputType.name,
            expands: false,
            decoration: const InputDecoration(
              labelText: BTexts.lastName, prefixIcon: Icon(Iconsax.user), 
            ),
          ),
        )
      ],
    ), 
    const SizedBox(height: BSizes.spaceBtwInputFields,), 
    
    ///UserName
    TextFormField(
             textInputAction: TextInputAction.next, 
            keyboardType: TextInputType.name,
          
            decoration: const InputDecoration(
              labelText: BTexts.username, prefixIcon: Icon(Iconsax.user), 
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwInputFields,), 
    
    ///Email
    TextFormField(
             textInputAction: TextInputAction.next, 
            keyboardType: TextInputType.emailAddress,
          
            decoration: const InputDecoration(
              labelText: BTexts.email, prefixIcon: Icon(Iconsax.direct), 
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwInputFields,), 
    
    ///PhoneNumber
    TextFormField(
             textInputAction: TextInputAction.next, 
            keyboardType: TextInputType.phone,
          
            decoration: const InputDecoration(
              labelText: BTexts.phoneNo, prefixIcon: Icon(Iconsax.call), 
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwInputFields,), 
    
    ///Password
    TextFormField(
             textInputAction: TextInputAction.next, 
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
          
            decoration: const InputDecoration(
              labelText: BTexts.password, prefixIcon: Icon(Iconsax.password_check), suffixIcon: Icon(Iconsax.eye_slash) 
            ),
          ),
          const SizedBox(height: BSizes.spaceBtwSections,), 
    
          /// Terms and Conditions CheckBox 
          Row(
            children: [
              SizedBox(
                width: 24, height: 24, 
                child: Checkbox(value: true, 
                onChanged: (value){}),
              ), 
              const SizedBox(width: BSizes.spaceBtwItems,), 
            Text.rich(
    TextSpan(
      children: 
      [
        TextSpan(text: '${BTexts.iAgreeTo} ', 
        style: Theme.of(context).textTheme.bodySmall),
        TextSpan(text: BTexts.privacyPolicy, 
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? BColors.white : BColors.primary, 
        decoration: TextDecoration.underline)),  
        TextSpan(text: ' ${BTexts.and} ', 
        style: Theme.of(context).textTheme.bodySmall)
        , 
         TextSpan(text: BTexts.termsOfUse, 
         style: Theme.of(context).textTheme.bodyMedium!.apply(color: dark ? BColors.white : BColors.primary, 
        decoration: TextDecoration.underline
        )), 
        
      ]
    )
              ), 
            ],
          ), 
    const SizedBox(height: BSizes.spaceBtwSections,), 
          /// Sign Up Button 
          SizedBox(width: double.infinity, 
          child: ElevatedButton(onPressed: (){
            Get.to(()=> const VerifyEmailScreen());
          },
           child: const Text(BTexts.createAccount)),)
      ],
    ));
  }
}












