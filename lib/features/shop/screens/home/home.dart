import 'package:bellymax/common/widgets/images/b_carousel_images.dart';
import 'package:bellymax/utils/constants/circular_container.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/menCategory.dart';
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
          preferredSize: const Size.fromHeight(60), child: BSearchController(darkMode: darkMode, 
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
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [   
            menuCategory(),
            SizedBox(height: BSizes.spaceBtwItems,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1
                  ), 
                  items: const [
                    BCarouselImages(imageUrl: BImages.banner1,),
                     BCarouselImages(imageUrl: BImages.banner2,),
                      BCarouselImages(imageUrl: BImages.banner3,),
                  ]),
                  const SizedBox(height: BSizes.spaceBtwItems,), 
                  BCircularContainer(
                    radius:40, 
                    backgroundColor: Colors.green,)
               ],
             ), 
        
           ), 
          
          
        
            ],
          ),
        ),
      ),
    ); 
  }
}

