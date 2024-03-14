import 'package:bellymax/features/shop/models/product_list.dart';
import 'package:flutter/material.dart';

class BProductTitleText extends StatelessWidget {
  const BProductTitleText({
    super.key, 
    required this.title, 
   this.smallSize = false, 
this.maxLines = 1, 
     this.textAlign = TextAlign.left,
  });

  final String title; 
  final bool smallSize; 
  final int maxLines; 
  final TextAlign? textAlign; 

  @override
  Widget build(BuildContext context) {
    return Text(title, 
    style: smallSize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall, 
    overflow: TextOverflow.ellipsis, 
    maxLines: maxLines, 
    textAlign: textAlign,);
  }
}
