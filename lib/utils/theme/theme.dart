import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._(); 

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: 'Poppins' , 
    brightness: Brightness.light, 
    primaryColor: Colors.blue, 
    textTheme: TextTheme.lightTextTheme, 
  
  ); 

  static ThemeData darkTheme = ThemeData(
    
  ); 
}