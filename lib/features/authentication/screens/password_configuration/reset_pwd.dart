import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required String email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.back(); 
            }, 
              icon: const Icon(CupertinoIcons.clear)), 
            
          
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [

              /// Image with 60% of screen width
              Image(image: const AssetImage(BImages.deliveredEmailllustration), 
              width: BHelperFunctions.screenWidth() * 0.6
              ), 
              const SizedBox(height: BSizes.spaceBtwSections,), 
              /// title and subtitle
              Text(BTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,), 
              const SizedBox(height: BSizes.spaceBtwItems,), 
              Text(BTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,), 
              const SizedBox(height: BSizes.spaceBtwSections,), 
              /// Buttons
              
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(onPressed: (){}, child: const Text(BTexts.done)),
              ), 
              const SizedBox(height: BSizes.spaceBtwItems,), 
              SizedBox(
                width: double.infinity, 
                child: TextButton(onPressed: (){
                  Get.back(); 
                }, child: const Text(BTexts.resendEmail)),
              )
            ],
          ),
        )
      ),
    ); 
  }
}