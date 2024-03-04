import 'package:flutter/material.dart';

import 'custom_themes/text_theme.dart';

class BAppTheme{
  BAppTheme._(); 

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: 'Poppins' , 
    brightness: Brightness.light, 
    primaryColor: Colors.blue, 
    scaffoldBackgroundColor: Colors.white,
    textTheme: BTextTheme.lightTextTheme, 
  
  ); 

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: 'Poppins' , 
    brightness: Brightness.dark, 
    primaryColor: Colors.blue, 
    scaffoldBackgroundColor: Colors.black,
    textTheme: BTextTheme.darkTextTheme, 
    
  ); 
}