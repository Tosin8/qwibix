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
      child: const Column(
        children: [

        ],
        ), 
  
    );   
  }
}
