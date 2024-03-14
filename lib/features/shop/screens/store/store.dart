import 'package:bellymax/common/widgets/carticon.dart';
import 'package:bellymax/common/widgets/grid_layout/grid_layout.dart';
import 'package:bellymax/common/widgets/products/product_cards/brandpartners.dart';
import 'package:bellymax/common/widgets/tabbar.dart';
import 'package:bellymax/common/widgets/tabbarView/burger.dart';
import 'package:bellymax/common/widgets/tabbarView/salad.dart';
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/features/shop/models/brand_feature.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
          actions: [
            BCartCounterIcon(darkMode: darkMode), 
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
              
            ],))
      ),
    );
  }
}

