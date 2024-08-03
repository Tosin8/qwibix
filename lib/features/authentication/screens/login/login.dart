import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/styles/spacing_styles.dart';
import 'package:qwibix/common/widgets/BForm/form_divider.dart';
import 'package:qwibix/common/widgets/BForm/social_btns.dart';
import 'package:qwibix/features/authentication/controllers/login/login_controller.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/constants/text_strings.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'login.widget/login_form.dart';
import 'login.widget/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    Get.put(LoginController()); // Initialize the controller

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BLoginHeader(dark: dark),
              const SizedBox(height: BSizes.spaceBtwInputFields),
              const BLoginForm(),
              BFormDivider(
                dark: dark,
                DividerText: (BTexts.orSignInWith.capitalize ?? 'Sign In With').toString(),
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: BSizes.spaceBtwSections),
              const BFormSocialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}