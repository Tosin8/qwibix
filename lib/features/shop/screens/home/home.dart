import 'package:bellymax/model/menu_list.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/menuList.dart';
import 'widgets/searchController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Iconsax.menu),
        title: const Text('Belly Max'), centerTitle: true, 
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: BSearchController(darkMode: darkMode, 
          text: 'Search for dish or cuisine',),
          ), 
        actions: const[
          Icon(Iconsax.shopping_bag), 
           SizedBox(width: 10,), 
        
          
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
            
              
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Our menu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              Text('View All'), 
        
            ],
            
          ),
          SizedBox(height: 10,), 
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 20,
            runSpacing: 30,
            children: [
          ...List.generate(
            FoodMenus.length,
             (index) =>  menuListCard(
                FoodMenus: FoodMenus[index]
               ),
            ),
            ]), 
        
            ],
          ),
        ),
      ),
    ); 
  }
}

