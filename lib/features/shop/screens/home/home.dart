import 'package:bellymax/model/menu_list.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/menuList.dart';

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
          preferredSize: const Size.fromHeight(60), child: BSearchController(darkMode: darkMode),
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

class BSearchController extends StatelessWidget {
  const BSearchController({
    super.key,
    required this.darkMode, required this.text, required this.icon,
  });

  final bool darkMode;
  final String text; 
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace * 0.5),
      child: Container(
        width: BDeviceUtils.getScreenWidth(context),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(BSizes.cardRadiusLg), 
      // border: Border.all(color: BColors.grey),
    ),
      child:  
        TextFormField(
              
          decoration: InputDecoration(
      
            prefixIcon: const Icon(Iconsax.search_normal_1,),
            hintText: 'Search for dish or cuisine', 
           hintStyle: TextStyle(fontSize: 14, color: darkMode ? Colors.white: Colors.black45), 
          ),
        )),
              );
  }
}

