import 'package:bellymax/features/shop/models/tabView/sandwish_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/productCards/sandwishCard.dart';

class SandWishPage extends StatelessWidget {
  const SandWishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: SandWishs.length,
  itemBuilder: (_, index){
    return SandWishproductCard(
      SandWishs: SandWishs[index], 
    );
  }); 

       
  }
}

