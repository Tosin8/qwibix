import 'package:bellymax/common/widgets/loaders/animation_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../helpers/helper_functions.dart';

class BFullScreenLoader{
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,  // Use Get.overlaycontext for overlay dialogs
      
      barrierDismissible: false, // the dialog can't be dismissed by tapping outside of it. 
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: BHelperFunctions.isDarkMode(Get.context!) ? BColors.dark : BColors.white,
          width: double.infinity,
           height: double.infinity, 
          child: Column(
            children: [
              const SizedBox(height: 250,), 
              BAnimationLoaderWidget(text: text, animation: animation), 
            ],
          ),
        ))); 
  }
}

// Stopping the currently open loading dialog. 
/// this method returns nothing
/// 
 stopLoading(){
  Navigator.of(Get.overlayContext!).pop(); // close the dialog using the navigator
}