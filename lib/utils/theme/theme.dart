import 'package:flutter/material.dart';

class BAppTheme{
  BAppTheme._(); 

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: 'Poppins' , 
    brightness: Brightness.light, 
    primaryColor: Colors.blue, 
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(), 
  
  ); 

  static ThemeData darkTheme = ThemeData(
    
  ); 
}