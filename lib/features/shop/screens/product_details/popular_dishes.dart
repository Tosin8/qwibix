import 'package:bellymax/common/widgets/icons/favorite_icon.dart';
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/features/shop/models/product_list.dart';
import 'package:bellymax/utils/constants/sizes.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            

            // Header Product Image. 
            HeaderProductImage(TodaySpecialList: TodaySpecialList, dark: dark), 
            const SizedBox(height: BSizes.spaceBtwItems,),

// Product Variety Image. 
ProductVarietyImage(TodaySpecialList: TodaySpecialList),
const SizedBox(height: BSizes.spaceBtwItems,), 

// Product Name Title
 Padding(
   padding: const EdgeInsets.all(8.0),
   child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       Text(TodaySpecialList.title,
        style: Theme.of(context).textTheme.titleMedium!.apply(color: dark ? Colors.white : Colors.black),
       ),
       Icon(
        Icons.local_activity, 
       )
     ],
   ),
 ),
//const SizedBox(height: BSizes.spaceBtwItems,),

Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    children: [
      Text(TodaySpecialList.brandTitle), 
      SizedBox(width: BSizes.spaceBtwItems,),
      Text(TodaySpecialList.category), 
    ],
  ),
  
), 
SizedBox(height: BSizes.spaceBtwItems,),
BSectionHeading(title: 'Description', buttonTitle: ''), 
SizedBox(height: BSizes.spaceBtwItems,),
Text(TodaySpecialList.description),

          ]
        )
      )
    );
  }
}

class ProductVarietyImage extends StatelessWidget {
  const ProductVarietyImage({
    super.key,
    required this.TodaySpecialList,
  });

  final TodaySpecial TodaySpecialList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[Container(
          height: 100,
          width : 120, 
          decoration:  BoxDecoration(
             borderRadius:BorderRadius.circular(15) ,
            image: DecorationImage(
              image: AssetImage(TodaySpecialList.image), fit: BoxFit.cover), 
          ),
        ),
        Container(
          height: 100,
          width : 120, 
          decoration:  BoxDecoration(
            borderRadius:BorderRadius.circular(15) ,
            image: DecorationImage(
              image: AssetImage(TodaySpecialList.image), fit: BoxFit.cover), 
          ),
        ),Container(
          height: 100,
          width : 120, 
          decoration:  BoxDecoration(
             borderRadius:BorderRadius.circular(15) ,
            image: DecorationImage(
              image: AssetImage(TodaySpecialList.image), fit: BoxFit.cover), 
          ),
        ),
                ]),
    );
  }
}

class HeaderProductImage extends StatelessWidget {
  const HeaderProductImage({
    super.key,
    required this.TodaySpecialList,
    required this.dark,
  });

  final TodaySpecial TodaySpecialList;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    Hero(
      tag: TodaySpecialList.image, 
      child: Container(
        height: 300,
        width: double.infinity, 
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(TodaySpecialList.image), fit: BoxFit.cover), 
        ),
      ),
    ), 
    Positioned(
      top: 30, left: 10, 
      child: Row(
        
        children: [
          Container(
            width: 35, height: 35,
            decoration: BoxDecoration(color: dark ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5), borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: (){
    Get.back();
              }, 
              icon: Icon(Icons.arrow_back_ios, size: 20, color: dark? Colors.black : Colors.white),
          ), 
      ), 
      const SizedBox(width: 280,),
      BCircularIcon(dark: dark, icon: Iconsax.heart5, color: Colors.red)
    
      ],
      ),
    ), 
        
      ],
    );
  }
}