
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';

class BCircularContainer extends StatelessWidget {
  const BCircularContainer({
    Key? key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0, 
    this.child,
  this.backgroundColor = BColors.white,
  }) : super(key: key);

  final double? width; 
  final double padding; 
  final double? height;
  final double radius; 
  final Widget? child; 
  final Color backgroundColor; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, 
      height: height, 
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(radius), 
        color: backgroundColor, 
      ),
      child: child, 
    );
  }
}
