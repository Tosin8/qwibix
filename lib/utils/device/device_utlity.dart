import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle (
      SystemUiOverlayStyle(statusBarColor: color), 
        
      );
    
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.shortestSide >= 600;
  }
}