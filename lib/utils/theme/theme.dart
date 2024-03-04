import 'package:flutter/material.dart';

import 'custom_themes/elevated_button_theme.dart';
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
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme, 
  
  ); 

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: 'Poppins' , 
    brightness: Brightness.dark, 
    primaryColor: Colors.blue, 
    scaffoldBackgroundColor: Colors.black,
    textTheme: BTextTheme.darkTextTheme, 
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
    
  ); 
}