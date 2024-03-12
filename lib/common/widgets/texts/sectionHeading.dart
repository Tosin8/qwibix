import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BSectionHeading extends StatelessWidget {
  const BSectionHeading({
    super.key, 
    required this.title, 
    this.textColor,
     this.onTap, 
      this.showActionButton = true,
       required this.buttonTitle,
  });

  final String title, buttonTitle; 
  final Color? textColor; 
  final void Function()? onTap;
  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, 
      style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), 
       maxLines: 1, overflow: TextOverflow.ellipsis,),
     
      
      if(showActionButton) GestureDetector(
        onTap: onTap, 
        child: Text(buttonTitle))
          
    ],
    
                  );
  }
}

