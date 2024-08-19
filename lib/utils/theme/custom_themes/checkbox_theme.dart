import 'package:flutter/material.dart';

class BCheckboxTheme {
  BCheckboxTheme._(); // to avoid creating instances 


  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4)), 
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white; 
          
        } else {
          return Colors.black;
        }
      }
      ), 
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }
      ), 
  ); 

  /// dark theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4)), 
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white; 
          
        } else {
          return Colors.black;
        }
      }
      ), 
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }
      ), 
  );
}