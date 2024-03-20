
import 'package:bellymax/features/authentication/controllers/login/login_controller.dart';
import 'package:bellymax/features/authentication/screens/password_configuration/forgot_pwd.dart';
import 'package:bellymax/features/authentication/screens/signup/signup.dart';
import 'package:bellymax/navigation_menu.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey, 
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: controller.email,
              validator: (value) => BValidator.validateEmail(value),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right), 
                  labelText: BTexts.email
              ),
            ), 
            const SizedBox(height: BSizes.spaceBtwInputFields,),
        
            /// Passwords
             TextFormField(
              controller: controller.password,
              validator: (value) => BValidator.validateEmptyText('Password', value),
                textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
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
                      value: true, onChanged: (value) {}, 
        
                    ), 
                    const Text(BTexts.rememberMe), 
                  
                  ],
                ), 

                // Forgot Password  
                TextButton(onPressed: (){
                  Get.to(() => const ForgotPassword());
                }, 
                child: const Text(BTexts.forgetPassword)),
                
              ],
            ) , 
        
            /// Sign In Button 
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), 
              child: const Text(BTexts.signIn)),
            ), 
        const SizedBox(height: BSizes.spaceBtwItems,),
            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: (){
                Get.to(
                  () =>
                  const SignUpScreen()); 
              }, 
              child: const Text(BTexts.createAccount)),), 
             
          ],
        ),
      ), 
      );
  }
}

