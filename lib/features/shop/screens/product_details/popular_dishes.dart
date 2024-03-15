import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// PD - Product Details
class PDPopularDishes extends StatelessWidget {
  const PDPopularDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            

            // Header Product Image. 
            Stack(
              children: [
Container(
  height: 300,
  width: double.infinity, 
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/images/popular1.png'), fit: BoxFit.cover)
  ),
)
                
              ],
            )
          ]
        )
      )
    );
  }
}