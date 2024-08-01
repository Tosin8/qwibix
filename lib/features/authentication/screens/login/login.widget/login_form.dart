
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/features/authentication/controllers/login/login_controller.dart';
import 'package:qwibix/features/authentication/screens/password_configuration/forgot_pwd.dart';
import 'package:qwibix/features/authentication/screens/signup/signup.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/constants/text_strings.dart';
import 'package:qwibix/utils/validators/validation.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
       
   final controller = Get.put(LoginController());
  // Get.delete<LoginController>(); // just included. 
 // final controller = Get.find<LoginController>();

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              // Email
        Obx(() =>    TextFormField(
                controller: controller.email,
                validator: (value) => BValidator.validateEmail(value),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: BTexts.email,
                ),
              ),
        ), 
              const SizedBox(height: BSizes.spaceBtwInputFields),

              // Password, OBx was used. 
               Obx(
                () => 
           
                TextFormField(
                  controller: controller.password,
                  validator: (value) => BValidator.validatePassword(value),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    labelText: BTexts.password,
                    suffixIcon: IconButton(
                      onPressed: () => controller.hidePassword.value =
                          !controller.hidePassword.value,
                      icon: Icon(controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye),
                    ),
                  ),
                ),), 
              
              const SizedBox(height: BSizes.spaceBtwInputFields / 2),

              // Remember Me & Forget Password.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Remember Me
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value,
                        ),
                      ),
                      const Text(BTexts.rememberMe),
                    ],
                  ),

                  // Forgot Password
                  TextButton(
                    onPressed: () {
                      Get.to(() => const ForgotPassword());
                    },
                    child: const Text(BTexts.forgetPassword),
                  ),
                ],
              ),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.emailAndPasswordSignIn(),
                  child: const Text(BTexts.signIn),
                ),
              ),
              const SizedBox(height: BSizes.spaceBtwItems),

              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: const Text(BTexts.createAccount),
                ),
              ),
            ],
          ),
        ),
      ),
    );
       }
       
        
}
