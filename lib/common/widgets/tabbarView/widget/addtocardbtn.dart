import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class addToCartBtn extends StatelessWidget {
  const addToCartBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        
      },
      child: Container(
        width: 35, height: 35, 
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), 
          bottomRight: Radius.circular(15)),
          color: Colors.black
        ),
        child: const Icon(Iconsax.add, color: Colors.white,),
      ),
    );
  }
}