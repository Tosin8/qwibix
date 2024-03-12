import 'package:bellymax/model/menu_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/menuList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Iconsax.menu),
        title: const Text('Belly Max'), centerTitle: true, 
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
            child: Form(child: 
              TextFormField(
                    
                decoration: const InputDecoration(
            
                  prefixIcon: Icon(Iconsax.search_normal_1),
                  hintText: 'Search for dish or cuisine', 
                 hintStyle: TextStyle(fontSize: 14, color: Colors.black45), 
                ),
              )),
                    ),
          )),
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
        // Expanded(
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: FoodMenus.length,
        //     itemBuilder: (_, index){
        //       return Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: menuListCard(FoodMenus: FoodMenus[index]),
        //       );
        //     }),
        // )
        //  menuListCard() 
            ],
          ),
        ),
      ),
    ); 
  }
}

