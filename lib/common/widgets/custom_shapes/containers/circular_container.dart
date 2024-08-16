// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:qwibix/utils/constants/colors.dart';

class BCircularContainer extends StatelessWidget {
  const BCircularContainer({
    Key? key,
    this.width = 400,
    this.padding = 0,
    this.height = 400,
    this.radius = 400,
    this.child,
    this.backgroundColor = BColors.white,
    this.margin, 
  }) : super(key: key);

  final double? width; 
  final double padding; 
  final double? height;
  final double radius; 
  final Widget? child; 
  final Color backgroundColor; 
  final EdgeInsets? margin; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, 
      height: height, 
      margin: margin,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(radius), 
        color: backgroundColor, 
      ),
      child: child, 
    );
  }
}
