
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qwibix/features/shop/models/tabView/burger_model.dart';
import 'package:qwibix/features/shop/models/tabView/soup_model.dart';

import 'widget/productCards/soupCard.dart';

class SoupPage extends StatelessWidget {
  const SoupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
ListView.builder(
  itemCount: Burgers.length,
  itemBuilder: (_, index){
    return SoupproductCard(
      Soups: Soups[index],
    );
  }); 

       
  }
}

