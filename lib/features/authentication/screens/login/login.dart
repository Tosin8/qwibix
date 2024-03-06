import 'package:bellymax/common/styles/spacing_styles.dart';
import 'package:bellymax/common/widgets/BForm/form_divider.dart';
import 'package:bellymax/common/widgets/BForm/social_btns.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'login.widget/login_form.dart';
import 'login.widget/login_header.dart';

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
            BLoginForm(), 

                /// Divider 
                BFormDivider(dark: dark, 
                DividerText: BTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
const SizedBox(height: BSizes.spaceBtwSections,), 
                /// Footer 
                BFormSocialMedia()
            ],
          
          )
        ),
      )
    ); 
  }
}

