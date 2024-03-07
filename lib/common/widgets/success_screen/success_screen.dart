import 'package:bellymax/common/styles/spacing_styles.dart';
import 'package:bellymax/features/authentication/screens/login/login.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppBarHeight * 2, 
          child: Column(
            children: [
              Image(image: const AssetImage(BImages.staticSuccessIllustration), 
              width: BHelperFunctions.screenWidth() * 0.6,
              ), 
              const SizedBox(height: BSizes.spaceBtwSections,),

              /// title and subtitle
              Text(BTexts.yourAccountCreatedTitle, 
              style: Theme.of(context).textTheme.headlineMedium,
               textAlign: TextAlign.center,), 
               const SizedBox(height: BSizes.spaceBtwItems,), 
               
                  Text(BTexts.yourAccountCreatedSubTitle, 
              style: Theme.of(context).textTheme.labelMedium,
               textAlign: TextAlign.center,),
               const SizedBox(height: BSizes.spaceBtwSections,), 

               /// Button 
               SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: (){
                    Get.to(() => Get.to(const LoginScreen()));
                  }, child: const Text(BTexts.tContinue)),
               )

            ],
          ),),

      )
    );
  }
}