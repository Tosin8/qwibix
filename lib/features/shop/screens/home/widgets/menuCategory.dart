
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/features/shop/models/category_model.dart';
import 'package:bellymax/features/shop/screens/home/widgets/category_shimmer.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../controllers/category_controller.dart';
import 'menuList.dart';

class menuCategory extends StatelessWidget {
  const menuCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final categoryController = Get.put(CategoryController());
    

    return Column(
     children:[
         const Padding(
           padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
           child: BSectionHeading(title: 'Categories', buttonTitle: 'View All', ),
         ),
       const SizedBox(height: BSizes.spaceBtwItems,), 


// Localhost storage. 

    // Padding(
    //       padding: const EdgeInsets.only(right: BSizes.spaceBtwItems), 
    //       child: SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
                     
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                 ...List.generate(
    //                   FoodMenus.length,
    //                    (index) =>  Padding(
    //                      padding: const EdgeInsets.all(6.0),
    //                      child: menuListCard(
    //                                 FoodMenus: FoodMenus[index]
    //                                ),
    //                    ),
    //                   ),
    //                   ]),
    //     ),
    //   ) , 

       Obx(() {
        if(categoryController.isLoading.value) return const BCategoryShimmer(); 

        if(categoryController.featuredCategories.isEmpty) {
          return Center(child: Text('No Data Found!', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white),),); 
        }
         return Padding(
            padding: const EdgeInsets.only(right: BSizes.spaceBtwItems), 
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                       
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                      ...List.generate(
                        //FoodMenus.length,
                        categoryController.featuredCategories.length,
                   
                         (index) {
                         final category = categoryController.featuredCategories[index]; 
                         return Padding(
                           padding: const EdgeInsets.all(6.0),
                          
                           child: menuListCard(
                                      FoodMenus: FoodMenus[index]
                                     ),
                         );
       }),
                        ]),
          ),
               );
   } ) , 
       ],
              );
  }
}
