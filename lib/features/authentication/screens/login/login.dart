import 'package:bellymax/common/styles/spacing_styles.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? BImages.darkApplogo : BImages.lightApplogo)), 
                    Text(BTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,), 
                    const SizedBox(height: BSizes.sm), 
                    Text(BTexts.loginSubTitle, style: Theme.of(context).textTheme.titleLarge,),
                ],
              ), 

              /// Form
              Form(child: Column())
            ],
          
          )
        ),
      )
    ); 
  }
}