import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/authentication/controllers/login/login_controller.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/constants/text_strings.dart';
import 'package:qwibix/utils/validators/validation.dart';

import '../../password_configuration/forgot_pwd.dart';
import '../../signup/signup.dart';

class BLoginForm extends GetView<LoginController> {
  const BLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child:  Padding(
        padding: const EdgeInsets.symmetric(
          vertical: BSizes.spaceBtwSections),
        child: Column(
          children: [
        
        // Email
        TextFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), 
          labelText: BTexts.email),
          ), 
          const SizedBox(height: BSizes.spaceBtwInputFields,), 

          // Password
        TextFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), 
          labelText: BTexts.password, 
          suffixIcon: Icon(Iconsax.eye_slash
          ), 
          ),
          ), 
          const SizedBox(height: BSizes.spaceBtwInputFields / 2,), 

          // Remember Me and Forgot Password
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


// Remember Me. 
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Checkbox(value: true,
     onChanged: (value){}), 
     const Text(BTexts.rememberMe), 
  ],
), 

// Forget Password. 
TextButton(
  onPressed: (){
    Get.to(() => const ForgotPassword()); 
  }, 
  child: const Text(BTexts.forgetPassword
  ), 
  ), 
            ],
          ), 

          const SizedBox(height: BSizes.spaceBtwSections,), 

          // Sign In Button
          SizedBox(
            width: double.infinity, 
            child: ElevatedButton(
              onPressed: (){},

           child: const Text(BTexts.signIn)),), 
const SizedBox(height: BSizes.spaceBtwItems,), 
           // Create Account
           SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){
            Get.to(() => const SignUpScreen());
           }, child: const Text(BTexts.createAccount))), 
           const SizedBox(height: BSizes.spaceBtwSections)
          ],
          ),
      ), 
  
    );   
  }
}
