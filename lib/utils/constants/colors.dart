import 'package:flutter/material.dart';

class BColors{
  BColors._(); 

// Basic Color
  static const Color primary = Color(0xFF4b68FF); 
  static const Color secondary = Color(0xFFFFe24b); 
  static const Color primaryColor = Color(0xFFb0c7ff); 

  // text Color
  static const Color textPrimary = Color(0xFF333333); 
  static const Color textSecondary = Color(0xFF6c757d); 
  static const Color textWhite = Colors.white; 

  // background Colors
  static const Color light = Color(0xfff6f6f6); 
  static const Color dark = Color(0xff272727);
  static const Color primaryBackground = Color(0xfff3f5ff);  

  // background container Colors

  static const Color lightContainer = Color(0xFFf6f6f6);
  static const Color darkContainer = Color.fromRGBO(255, 255, 255, 0.1);
  //static const Color darkContainer = BColors.white.withOpacity(0.1); 

  // button Colors
  static const Color buttonPrimary = Color(0xff4b68ff); 
  static const Color buttonSecondary = Color(0xff6c757d); 
  static const Color buttonDisabled = Color(0xffc4c4c4); 

  // border Colors
  static const Color borderPrimary = Color(0xffd9d9d9); 
  static const Color borderSecondry = Color(0xdde6e6e6); 
  
  // error and validation Colors 
  static const Color error = Color(0xffd32f2f);
  static const Color success = Color(0xff388e3c); 
  static const Color warning = Color(0xfff57c00);
  static const Color info = Color(0xff1976d2); 

  // neutral shades
  static const Color black = Color(0xff232323); 
  static const Color darkerGrey = Color(0xff4f4f4f);
  static  const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xfffffff); 



}