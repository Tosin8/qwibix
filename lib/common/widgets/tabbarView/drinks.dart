import 'package:bellymax/features/shop/models/tabView/burger_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../features/shop/models/tabView/drinks_model.dart';
import 'widget/productCards/drinkCard.dart';


class DrinksPage extends StatelessWidget {
  const DrinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: Burgers.length,
  itemBuilder: (_, index){
    return DrinksproductCard(
      Drinks: Drinks[index],
    );
  }); 

       
  }
}

