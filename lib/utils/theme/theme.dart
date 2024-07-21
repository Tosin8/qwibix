
import 'package:flutter/material.dart';
import 'package:qwibix/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:qwibix/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:qwibix/utils/theme/custom_themes/chip_theme.dart';
import 'package:qwibix/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:qwibix/utils/theme/custom_themes/text_field_theme.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/elevated_button_theme.dart';

import 'custom_themes/text_theme.dart';

class BAppTheme{
  BAppTheme._(); 

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: 'Poppins' , 
    brightness: Brightness.light, 
    primaryColor: Colors.blue, 
    
    textTheme: BTextTheme.lightTextTheme, 
    chipTheme: BChipTheme.lightChipTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme, 
    scaffoldBackgroundColor: Colors.white, 
    appBarTheme: BAppBarTheme.lightAppBarTheme, 
    checkboxTheme: BCheckboxTheme.lightCheckboxTheme, 
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme, 
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme, 
    inputDecorationTheme: BTextFormFieldTheme.lightInputDecorationTheme, 
    
  
  ); 

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true, 
    fontFamily: 'Poppins' , 
    brightness: Brightness.dark, 
    primaryColor: Colors.blue, 
    scaffoldBackgroundColor: Colors.black,
    textTheme: BTextTheme.darkTextTheme, 
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
    
    chipTheme: BChipTheme.darkChipTheme, 
    appBarTheme: BAppBarTheme.darkAppBarTheme, 
    checkboxTheme: BCheckboxTheme.darkCheckboxTheme, 
    bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme, 
    outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme, 
    inputDecorationTheme: BTextFormFieldTheme.darkInputDecorationTheme, 
    
    
  ); 
}