// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:qwibix/common/widgets/shimmers/category_shimmer.dart';
import 'package:qwibix/common/widgets/shimmers/shimmer.dart';
import 'package:qwibix/features/shop/controllers/category_controller.dart';
import 'package:qwibix/features/shop/screens/extensions/sub_category/sub_category.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class BHomeCategories extends StatelessWidget {
  const BHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    // connecting it to firestore. 


    final categoryController = Get.put(CategoryController()); 

    // OFFLINE CODE. 
    // return SizedBox(
    //   height: 80, 
    //   child: ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: 6,
    //     scrollDirection: Axis.horizontal,
      
    //   itemBuilder: (_, index) {
    //     return  BVerticalImageText(title: 'Shoes', image: BImages.shoeIcon, 
    //     onTap: ()  => Get.to ( () => const SubCategoriesScreen(),),
    //             ); 
        
    //   },
      
    //     ),
    // );

    // ONLINE CODE. = TO BACKEND FIRESTORE. 
    return Obx(() {
      if(categoryController.isLoading.value) return const CategoryShimmer(); 
       return  SizedBox(
        height: 80, 
        child: ListView.builder(shrinkWrap: true, 
        itemCount: 6, 
        scrollDirection: Axis.horizontal, 
        itemBuilder: (context, index) {
          return null;
        
          
        },),
      ); 
    });
  }
}

