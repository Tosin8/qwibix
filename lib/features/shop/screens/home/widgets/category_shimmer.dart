import 'package:flutter/material.dart';

class BCategoryShimmer extends StatelessWidget {
  const BCategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80, 
      child: ListView.separated(
        
        itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount)
    );
  }
}