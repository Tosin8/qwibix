

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qwibix/features/shop/models/tabView/burger_model.dart';
import 'package:qwibix/features/shop/models/tabView/chicken_model.dart';

import 'widget/productCards/chickenCard.dart';

class ChickenPage extends StatelessWidget {
  const ChickenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: Burgers.length,
  itemBuilder: (_, index){
    return ChickenproductCard(
      Chickens: Chickens[index],
    );
  }); 

       
  }
}

