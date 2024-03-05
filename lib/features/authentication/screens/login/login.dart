import 'package:bellymax/common/styles/spacing_styles.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: BSpacingStyle.paddingWithAppHeight, 
          child: Column(
            children: [
              
            ],
          
          )
        ),
      )
    ); 
  }
}