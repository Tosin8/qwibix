// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/appbar/tabbar.dart';
import 'package:qwibix/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:qwibix/common/widgets/products/product_cards/brandpartners.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/screens/extensions/brands/all_brand.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'widgets/category_tab.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
        appBar: BAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
          actions: [
            BCartCounterIcon(
              onPressed: () {},
             iconColor: BColors.black,
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
               SliverAppBar(
                pinned: true, 
                floating: true, 
                backgroundColor: BHelperFunctions.isDarkMode(context) ? BColors.black : BColors.white,
                expandedHeight: 440, 
        
                flexibleSpace: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
                child: ListView(
                  shrinkWrap: true, 
                  physics: const NeverScrollableScrollPhysics(), 
                  children:  [
        
                    // Search Bar. 
                   // SizedBox(height: BSizes.spaceBtwItems), 
                    const BSearchContainer(text: 'Search here', showBorder: true, showBackground: false, padding: EdgeInsets.zero,), 
                    const SizedBox(height: BSizes.spaceBtwSections,), 
        
        
                    /// Featured Brands. 
                    BSectionHeading(title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrandsScreen())
                      
                    ,), 
                    const SizedBox(height: BSizes.spaceBtwItems / 1.5,), 
        
                    GridLayout(itemCount: 4,
                    mainAxisExtent: 80,
                     itemBuilder: (_, index) {
                       return  const BrandCard(
                        showBorder: true,
                       );
                     })
                  ],
                ),
                ),
                bottom: const BTappBar(
                  tabs: [
                    Tab(child: Text('Sports')), 
                       Tab(child: Text('Furniture')),   
                        Tab(child: Text('Electronics')),   
                         Tab(child: Text('Clothes')),  
                           Tab(child: Text('Cosmetics')), 
                  ]), 
                
                
                
              )
            ]; 
          }, body: const TabBarView(
            children: [
              CategoryTab(),
                CategoryTab(),  CategoryTab(),  CategoryTab(),  CategoryTab(),
                  
                ],
              ),)
            
          ),)
        
        
      );
    
  }
}