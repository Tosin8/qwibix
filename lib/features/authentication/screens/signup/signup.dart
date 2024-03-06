import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            BSizes.defaultSpace), 
          child: Column(
            children: [

              /// title 
              Text(BTexts.signupTitle, 
              style: Theme.of(context).textTheme.headlineMedium,), 
              SizedBox(height: BSizes.spaceBtwSections,), 

              /// Form
              Form(
                child: Column(
                children: [
Row(
  children: [],
)

                ],
              ))
            ],
          )),
      ),

    );
  }
}