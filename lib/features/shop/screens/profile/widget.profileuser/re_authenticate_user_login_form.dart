import 'package:bellymax/features/personalization/controllers/user_controller.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance; 
    return Scaffold(
      appBar: AppBar(title: const Text('Re-Authenticate User')),
      body:  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BSizes.defaultSpace), 
          child: Form(
            key: controller.reAuthFormKey, 
            child: Column()),),
      )
    );
  }
}