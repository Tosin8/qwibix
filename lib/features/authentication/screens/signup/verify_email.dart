// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/data/repositories/authentication/authentication_repository.dart';
import 'package:qwibix/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/constants/text_strings.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';




class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({
    Key? key,
    this.email,
  }) : super(key: key);

final String? email; 
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(VerifyEmailController()); 

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.logout(),  icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(BSizes.defaultSpace), 
          child: Column(
            children: [
              // Image
              Image(image: const AssetImage(BImages.deliveredEmailllustration), 
              width: BHelperFunctions.screenWidth() * 0.6,
              ), 
              const SizedBox(height: BSizes.spaceBtwSections,),

              /// title and subtitle
              Text(BTexts.confirmEmail, 
              style: Theme.of(context).textTheme.headlineMedium,
               textAlign: TextAlign.center,), 
               const SizedBox(height: BSizes.spaceBtwItems,), 

               Text(email ?? '', 
                style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center), 

                  const SizedBox(height: BSizes.spaceBtwItems,), 
                  Text(BTexts.confirmEmailSubTitle, 
              style: Theme.of(context).textTheme.labelMedium,
               textAlign: TextAlign.center,),
               const SizedBox(height: BSizes.spaceBtwSections,), 

               ///Button
               SizedBox(width: double.infinity, 
               child: ElevatedButton(
                onPressed: () => 
                  controller.checkEmailVerificationStatus(), 
               
                child: const Text(BTexts.tContinue), 
                ),), 


               const SizedBox(height: BSizes.spaceBtwItems,), 
                SizedBox(width: double.infinity, 
               child: TextButton(onPressed: () => controller.sendEmailVerification(),
                child: const Text(BTexts.resendEmail), 
                ),), 


            ],
          ),),
      ),
    );
  }
}
