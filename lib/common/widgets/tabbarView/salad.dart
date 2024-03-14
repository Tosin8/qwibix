import 'package:bellymax/features/shop/models/tabView/salad_model.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SaladPage extends StatelessWidget {
  const SaladPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Row( 
        children: [
          Flexible(
            child: Container(
              width: 80, height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(Salads[0].image), fit: BoxFit.cover), 
              ),
            ),
          ), 
          SizedBox(width: BSizes.spaceBtwItems), 
          Expanded(
            child: Container(
              width: 60, 
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Salads[0].title, 
                  style: Theme.of(context).textTheme.titleMedium,), 
                   SizedBox(height: 5), 
                  Text(Salads[0].description, 
                  maxLines: 2,overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 5,),  
                  Text(Salads[0].price,
                   style: Theme.of(context).textTheme.titleLarge,), 
                ],
              ),
            ),
          )
        ],
    
    );
  }
}