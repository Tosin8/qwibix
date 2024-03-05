import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppHeight = EdgeInsets.only(
    top: BSizes.appBarHeight, 
    left: BSizes.defaultSpace, 
    bottom: BSizes.defaultSpace, 
    right: BSizes.defaultSpace, 
  ); 
}