import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/authentication/controllers/login/login_controller.dart';
import 'package:qwibix/navigation_menu.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/constants/text_strings.dart';

import '../../../../../utils/validators/validation.dart';
import '../../password_configuration/forgot_pwd.dart';
import '../../signup/signup.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child:  Padding(
        padding: const EdgeInsets.symmetric(
          vertical: BSizes.spaceBtwSections),
        child: Column(
          children: [
        
        // Email
        TextFormField(
          controller: controller.email, 
          validator: (value) => BValidator.validateEmail(value),
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), 
          labelText: BTexts.email),
          ), 
          const SizedBox(height: BSizes.spaceBtwInputFields,), 

          // Password
        Obx(
      () =>  TextFormField(
         controller: controller.password, 
          validator: (value) => BValidator.validatePassword( value),
               textInputAction: TextInputAction.done, 
              keyboardType: TextInputType.visiblePassword,
              obscureText: controller.hidePassword.value,
            
              decoration:  InputDecoration(
                labelText: BTexts.password,
                 prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: 
                 IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value, 
                 icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye) , 
              ),
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
  Obx(() =>   Checkbox(
    value: controller.rememberMe.value,
     onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value, 
     )
     ), 
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
              onPressed: (){
                Get.to(()=> const NavigationMenu());
              },

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
