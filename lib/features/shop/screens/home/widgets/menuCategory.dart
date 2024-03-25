
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/features/shop/controllers/category_controller.dart';
import 'package:bellymax/features/shop/models/menu_list.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

       Padding(
          padding: const EdgeInsets.only(right: BSizes.spaceBtwItems), 
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
                     
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                    ...List.generate(
                      FoodMenus.length,
                       (index) =>  Padding(
                         padding: const EdgeInsets.all(6.0),
                         child: menuListCard(
                                    FoodMenus: FoodMenus[index]
                                   ),
                       ),
                      ),
                      ]),
        ),
      ) , 
       ],
              );
  }
}
