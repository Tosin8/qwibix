import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/image_strings.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [   
            menuCategory(),
            SizedBox(height: BSizes.spaceBtwItems,),
           Padding(
             padding: EdgeInsets.all(8.0),
             child: BCarouselImages(),
           ), 
          
          
        
            ],
          ),
        ),
      ),
    ); 
  }
}

class BCarouselImages extends StatelessWidget {
  const BCarouselImages({
    super.key, 
    this.width = 150.0,
     this.height = 150.0,
      required this.imageUrl,
      this.applyImageRadius = false, 
      this.border, 
      this.backgroundColor = BColors.light,
       this.fit = BoxFit.contain,
        this.padding,
          this.isNetworkImage = false, 
           this.onPressed, 
        this.borderRadius = BSizes.md,
  });

final double ? width, height; 
final String imageUrl; 
final bool applyImageRadius; 
final BoxBorder? border; 
final Color backgroundColor; 
final BoxFit? fit; 
final EdgeInsetsGeometry? padding; 
final bool isNetworkImage; 
final VoidCallback? onPressed; 
final double borderRadius; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onPressed, 
      child: Container(
        width: width, 
        height: height,
        padding: padding,
       decoration: BoxDecoration(
        border: border, color: backgroundColor, borderRadius:BorderRadius.circular(borderRadius), 
        
       ),
       child: ClipRRect(
         borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero, 
         child: Image(
          fit: fit, 
          image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider 
         )),
      ),
    );
  }
}

