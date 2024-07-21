
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qwibix/features/shop/models/tabView/salad_model.dart';

import 'widget/productCards/saladCard.dart';

class SaladPage extends StatelessWidget {
  const SaladPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: Salads.length,
  itemBuilder: (_, index){
    return SaladproductCard(
      Salads: Salads[index],
    );
  }); 

       
  }
}

