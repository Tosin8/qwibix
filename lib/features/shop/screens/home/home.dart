import 'package:bellymax/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/model/product_list.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:iconsax/iconsax.dart';

import 'widgets/menuCategory.dart';
import 'widgets/promoSlider.dart';
import 'widgets/searchController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading:  Icon(Iconsax.menu, 
        color: darkMode ? Colors.white : Colors.black,),
        title: Text('Belly Max', 
        style: TextStyle(
          color: darkMode ? Colors.white: Colors.black
        ) ,), centerTitle: true, 
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60), 
          child: BSearchController(darkMode: darkMode, 
          text: 'Search for dish or cuisine',),
          ), 
        actions: [
          Stack(
            children: [
              Icon(Iconsax.shopping_bag, 
            color: darkMode ? Colors.white : Colors.black,),
            Positioned(
              right: 0,
          child: Container(
                width: 18, height: 18, 
                decoration: BoxDecoration(
                  color: BColors.black, 
                  borderRadius: BorderRadius.circular(100), 
                ),
                child: Center(
                  child: Text('2',
                  style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.white, fontSizeFactor: 0.8), 
                  ), 
                )
              ),
            ), 
        ]), 
           const SizedBox(width: 10,),       
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [   
            const menuCategory(),
            const SizedBox(height: BSizes.spaceBtwItems,),
           const Padding(
             padding: EdgeInsets.all(8.0),
             child: BPromoSlider(banners: [
               BImages.banner1, BImages.banner2, BImages.banner3, BImages.banner4
             ],), 
           
    
           ), 
           const SizedBox(height: BSizes.spaceBtwItems,), 
             const Padding(
           padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
           child: BSectionHeading(title: 'Popular Dishes', buttonTitle: 'View All', ),
         ),
         const SizedBox(height: BSizes.spaceBtwItems,), 
           Container(
            height: 600, width: 800,
             child: Expanded(
              
               child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding:  EdgeInsets.zero, 
                itemCount: TodaySpecialList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                

                mainAxisSpacing: BSizes.gridViewSpacing,
                crossAxisSpacing: BSizes.gridViewSpacing, 
                mainAxisExtent: 288
                ), 
                
                
                 itemBuilder: (_, index) => BProductCardVertical(
                  TodaySpecialList: TodaySpecialList[index],)),
             ),
           ), 
            const SizedBox(height: BSizes.spaceBtwItems,), 

            const Padding(
           padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
           child: BSectionHeading(title: 'Recommended', buttonTitle: 'View All', ),
         ),
         const SizedBox(height: BSizes.spaceBtwItems,), 
          Container(
            height: 600, width: 800,
             child: Expanded(
              
               child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding:  EdgeInsets.zero, 
                itemCount: TodaySpecialList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                

                mainAxisSpacing: BSizes.gridViewSpacing,
                crossAxisSpacing: BSizes.gridViewSpacing, 
                mainAxisExtent: 288
                ), 
                
                
                 itemBuilder: (_, index) => BProductCardVertical(
                  TodaySpecialList: TodaySpecialList[index],)),
             ),
           ), 
           const SizedBox(height: BSizes.spaceBtwItems,), 

            const Padding(
           padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
           child: BSectionHeading(title: 'Breakfast', buttonTitle: 'View All', ),
         ), 
         const SizedBox(height: BSizes.spaceBtwItems,),  
          Container(
            height: 600, width: 800,
             child: Expanded(
              
               child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding:  EdgeInsets.zero, 
                itemCount: TodaySpecialList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                

                mainAxisSpacing: BSizes.gridViewSpacing,
                crossAxisSpacing: BSizes.gridViewSpacing, 
                mainAxisExtent: 288
                ), 
                
                
                 itemBuilder: (_, index) => BProductCardVertical(
                  TodaySpecialList: TodaySpecialList[index],)),
             ),
           ), 
         const SizedBox(height: BSizes.spaceBtwItems,), 

            const Padding(
           padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
           child: BSectionHeading(title: 'Free Delivery', buttonTitle: 'View All', ),
         ),
         const SizedBox(height: BSizes.spaceBtwItems,), 
          Container(
            height: 600, width: 800,
             child: Expanded(
              
               child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding:  EdgeInsets.zero, 
                itemCount: TodaySpecialList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                

                mainAxisSpacing: BSizes.gridViewSpacing,
                crossAxisSpacing: BSizes.gridViewSpacing, 
                mainAxisExtent: 288
                ), 
                
                
                 itemBuilder: (_, index) => BProductCardVertical(
                  TodaySpecialList: TodaySpecialList[index],)),
             ),
           ), 
          
        
            ],
          ),
        ),
      ),
    ); 
  }
}

