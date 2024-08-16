
import 'package:flutter/material.dart';

class BSectionHeading extends StatelessWidget {
  const BSectionHeading({
    Key? key,
    this.textColor,
  this.showActionButton = true,
  this.buttonTitle = 'View All',
    this.onPressed, required this.title,
  }) : super(key: key);

final Color? textColor; 
final bool showActionButton; 
final String title, buttonTitle; 
final void Function()? onPressed; 


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
        maxLines: 1, overflow: TextOverflow.ellipsis,),
     if (showActionButton)    TextButton(onPressed: onPressed, 
     child: Text(buttonTitle, style: Theme.of(context).textTheme.bodySmall,)) ,  
      ],
    );
  }
}
