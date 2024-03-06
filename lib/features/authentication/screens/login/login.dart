import 'package:bellymax/common/styles/spacing_styles.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key}); 

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context); 
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppHeight, 
          child: Column(
            children: [
              /// Logo , Title and SubTitle
              BLoginHeader(dark: dark), 
 const SizedBox(height: BSizes.spaceBtwInputFields,),
              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.direct_right), 
                            labelText: BTexts.email
                        ),
                      ), 
                      const SizedBox(height: BSizes.spaceBtwInputFields,),
                  
                      /// Passwords
                       TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.password_check), 
                            labelText: BTexts.password, suffixIcon: Icon(Iconsax.eye_slash)
                        ),
                        
                      ),
                      const SizedBox(height: BSizes.spaceBtwInputFields / 2,),
                  
                      /// Remember Me & Forget Password. 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  
                          // Remember Me 
                          Row(
                            children: [
                              Checkbox(
                                value: true, onChanged: (value) {
                                  
                                },
                  
                              ), 
                              const Text(BTexts.rememberMe)
                            ],
                          ), 
                          const SizedBox(height: BSizes.spaceBtwSections,),  
                        ],
                      ) , 
                  
                      /// Sign In Button 
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, 
                        child: const Text(BTexts.signIn)),
                      ), 
                  const SizedBox(height: BSizes.spaceBtwItems,),
                      /// Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: (){}, 
                        child: const Text(BTexts.createAccount)),), 
                       
                    ],
                  ),
                ), 
                ), 

                /// Divider 
                Row(
                  children: [
                    
                    Flexible(
                      child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
                      thickness: 1.5, indent: 60, endIndent: 5,),
                    ),
                    Text(BTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
                     Flexible(
                      child: Divider(color: dark ? BColors.darkGrey: BColors.grey,
                      thickness: 1.5, indent: 5, endIndent: 60,),
                    )
                  ]
                ), 
const SizedBox(height: BSizes.spaceBtwSections,), 
                /// Footer 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: BColors.grey), 
                        borderRadius: BorderRadius.circular(100), 
                      ),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Image
                        
                        (
                          width: BSizes.iconMd, 
                          height: BSizes.iconMd,
                          image: AssetImage(BImages.google))),
                    ), 
                    SizedBox(width: BSizes.spaceBtwItems,), 
                      Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: BColors.grey), 
                        borderRadius: BorderRadius.circular(100), 
                      ),
                      child: IconButton(
                        onPressed: (){}, 
                        icon: Image
                        
                        (
                          width: BSizes.iconMd, 
                          height: BSizes.iconMd,
                          image: AssetImage(BImages.facebook))),
                    ), 
                  ],
                )
            ],
          
          )
        ),
      )
    ); 
  }
}

class BLoginHeader extends StatelessWidget {
  const BLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(dark ? BImages.darkApplogo : BImages.lightApplogo)), 
          Text(BTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,), 
          const SizedBox(height: BSizes.sm), 
          Text(BTexts.loginSubTitle, style: Theme.of(context).textTheme.titleLarge,),
      ],
    );
  }
}