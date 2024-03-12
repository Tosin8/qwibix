import 'package:bellymax/model/menu_list.dart';
import 'package:flutter/material.dart';

class menuListCard extends StatelessWidget {
  const menuListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        
      },
      child: Column(
        children: [
          Container(
            height: 70, width: 70,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(FoodMenus[0].image), fit: BoxFit.cover), 
          borderRadius: BorderRadius.circular(40)),
          ),
          SizedBox(height: 5,), 
          Text(FoodMenus[0].title, 
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600, 
            fontSize: 15),),
        ],
      ),
    );
  }
}