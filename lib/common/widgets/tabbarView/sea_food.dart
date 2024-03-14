import 'package:bellymax/features/shop/models/tabView/burger_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../features/shop/models/tabView/seafood_model.dart';
import 'widget/productCards/seafoodCard.dart';

class SeaFoodPage extends StatelessWidget {
  const SeaFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: Burgers.length,
  itemBuilder: (_, index){
    return SeaFoodproductCard(
      SeaFoods: SeaFoods[index],
    );
  }); 

       
  }
}

