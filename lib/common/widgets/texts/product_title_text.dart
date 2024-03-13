import 'package:bellymax/model/product_list.dart';
import 'package:flutter/material.dart';

class BProductTitleText extends StatelessWidget {
  const BProductTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(TodaySpecialList[0].title, 
    style: Theme.of(context).textTheme.titleMedium, 
    overflow: TextOverflow.ellipsis, 
    maxLines: 2, 
    textAlign: TextAlign.left,);
  }
}
