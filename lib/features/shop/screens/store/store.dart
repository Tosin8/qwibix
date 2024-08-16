
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:qwibix/common/widgets/products/product_cards/brandpartners.dart';
import 'package:qwibix/common/widgets/tabbar.dart';
import 'package:qwibix/common/widgets/tabbarView/burger.dart';
import 'package:qwibix/common/widgets/tabbarView/chicken.dart';
import 'package:qwibix/common/widgets/tabbarView/drinks.dart';
import 'package:qwibix/common/widgets/tabbarView/salad.dart';
import 'package:qwibix/common/widgets/tabbarView/sand_wish.dart';
import 'package:qwibix/common/widgets/tabbarView/sea_food.dart';
import 'package:qwibix/common/widgets/tabbarView/soup.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/models/brand_feature.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/tabbarView/desserts.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return DefaultTabController( 
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Menu', style: Theme.of(context).textTheme.headlineMedium,), 
          actions:  [
            BCartCounterIcon(
          onPressed: () {
            
          },
          iconColor: BColors.white,
        ), 
            const SizedBox(width: 10,)
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: 
          (_, innerBoxIsScrolled){
            return[
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true, 
                floating: true, 
                backgroundColor: BHelperFunctions.isDarkMode(context) ? BColors.black : BColors.white,
                expandedHeight: 300, 
                flexibleSpace:  Padding(
                  padding: const EdgeInsets.all(
                    BSizes.defaultSpace), 
                    child: ListView(
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(),
      children: [
      
        // featured brand
       const BSectionHeading(title: 'Featured Partners', buttonTitle: ''), 
       const SizedBox(height: BSizes.spaceBtwItems / 1.5), 
      
       GridLayout(itemCount: BrandList.length, mainAxisExtent: 80,
       itemBuilder: (_, index) {
        return BrandPartnersCard(BrandList: BrandList[index],);
       }, 
       ), 
       
      ],
                    ),
                    ),
      
                    // Tabs  for categories and brands
                  bottom: const BTabBar(
                    tabs: [
          Tab(child: Text('Salad'),), 
           Tab(child: Text('Burger'),), 
            Tab(child: Text('Soup'),), 
             Tab(child: Text('Chicken'),),  
             Tab(child: Text('Sea Food'),),
               Tab(child: Text('Drinks'),),  
               Tab(child: Text('Desserts'),), 
                Tab(child: Text('SandWish'),), 
            
        ]
                  ), 
              ),
            ]; 
          }, 
           
          body: const TabBarView(
            children: [
              SaladPage(), 
              BurgerPage(), 
              SoupPage(), 
              ChickenPage(), 
              SeaFoodPage(), 
               DrinksPage(), 
             DessertsPage(), 
              SandWishPage(), 

              
            ],))
      ),
    );
  }
}

