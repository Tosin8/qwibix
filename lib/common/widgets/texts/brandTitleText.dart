import 'package:bellymax/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({super.key, 
  this.color, 
  required this.title, 
 this.maxLines = 1,
   this.textAlign = TextAlign.center,  
   this.brandTextSizes = TextSizes.small});


final Color? color; 
final String title; 
final int maxLines; 
final TextAlign? textAlign; 
final TextSizes brandTextSizes; 
  @override
  Widget build(BuildContext context) {
    return Text(
      
    );
  }
}