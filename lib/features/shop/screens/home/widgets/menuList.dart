// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:bellymax/model/menu_list.dart';

// ignore: camel_case_types
class menuListCard extends StatelessWidget {
  const menuListCard({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.FoodMenus,
  }) : super(key: key);

// ignore: non_constant_identifier_names
final FoodMenu FoodMenus;
  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return GestureDetector( 
      onTap: () {
        
      },
      child: Column(
        children: [
          Container(
            height: 70, width: 70,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(FoodMenus.image), fit: BoxFit.cover), 
          borderRadius: BorderRadius.circular(40)),
          ),
          const SizedBox(height: 10,), 
          Text(FoodMenus.title, 
          style: TextStyle(
            color: darkMode ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600, 
            fontSize: 15),),
        ],
      ),
    );
  }
}
