import 'package:flutter/material.dart';

class BSectionHeading extends StatelessWidget {
  const BSectionHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Our Menu', 
      style: Theme.of(context).textTheme.headlineSmall,
      maxLines: 1, overflow: TextOverflow.ellipsis,) ,
      Text('View All'), 
          
    ],
    
                  );
  }
}

