import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class BLoaders {

  static warningSnackBar ({
    required title, message = ''
  }) {
    Get.snackbar(
      title,
      message,
      isDismissible: true, 
      shouldIconPulse: true, 
      colorText: BColors.white, 
      backgroundColor: Colors.orange, 
      snackPosition: SnackPosition.BOTTOM, 
      duration: const Duration(seconds: 3), 
      margin: const EdgeInsets.all(20), 
      icon: const Icon(Iconsax.warning_2, color: BColors.white,)
    ); 
  }

  static successSnackBar({required title, message = '', duration = 3}) {
    Get.snackbar(
      title, 
      message,
      isDismissible: true, 
      shouldIconPulse: true, 
      colorText: Colors.white, 
      backgroundColor: BColors.primary, 
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check, color: BColors.white,)
    );
  }
}