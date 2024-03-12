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
        actions: [
          const Icon(Iconsax.shopping_bag), 
          const SizedBox(width: 10,), 
          
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10,), 
            Form(child: 
            TextFormField(
        
              decoration: const InputDecoration(
          
                prefixIcon: Icon(Iconsax.search_normal_1),
                hintText: 'Search for dish or cuisine', 
               hintStyle: TextStyle(fontSize: 14, color: Colors.black45), 
              ),
            )),
            const SizedBox(height: 10,),  
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Our menu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            Text('View All'), 

          ],
          
        ),
        menuListCard() 
          ],
        ),
      ),
    ); 
  }
}

