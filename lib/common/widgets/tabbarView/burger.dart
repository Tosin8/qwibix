
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qwibix/features/shop/models/tabView/burger_model.dart';

import 'widget/productCards/burgerCard.dart';

class BurgerPage extends StatelessWidget {
  const BurgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: Burgers.length,
  itemBuilder: (_, index){
    return BurgerproductCard(
      Burgers: Burgers[index],
    );
  }); 

       
  }
}

