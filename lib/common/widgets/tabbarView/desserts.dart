import 'package:bellymax/features/shop/models/tabView/burger_model.dart';
import 'package:bellymax/features/shop/models/tabView/desset_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/productCards/dessertCard.dart';


class DessertsPage extends StatelessWidget {
  const DessertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: Desserts.length,
  itemBuilder: (_, index){
    return DessertsproductCard(
      Desserts: Desserts[index],
    );
  }); 

       
  }
}

