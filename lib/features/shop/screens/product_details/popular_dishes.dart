import 'package:bellymax/common/widgets/icons/favorite_icon.dart';
import 'package:bellymax/features/shop/models/product_list.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

// PD - Product Details
class PDPopularDishes extends StatelessWidget {
  const PDPopularDishes({super.key, required this.TodaySpecialList});

final TodaySpecial TodaySpecialList; 
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            

            // Header Product Image. 
            Stack(
              children: [
Container(
  height: 300,
  width: double.infinity, 
  decoration:  BoxDecoration(
    image: DecorationImage(
      image: AssetImage(TodaySpecialList.image), fit: BoxFit.cover), 
  ),
), 
Positioned(
  top: 30, left: 10, 
  child: Row(
    
    children: [
      Container(
        width: 35, height: 35,
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.5), borderRadius: BorderRadius.circular(10)),
        child: IconButton(
          onPressed: (){
            Get.back();
          }, 
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.white),
      ), 
  ), 
  SizedBox(width: 280,),
  BCircularIcon(dark: dark, icon: Iconsax.heart5, color: Colors.red)

  ],
  ),
), 
                
              ],
            )
          ]
        )
      )
    );
  }
}