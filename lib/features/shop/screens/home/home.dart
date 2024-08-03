
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/carticon.dart';
import 'package:qwibix/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:qwibix/common/widgets/shimmer.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/personalization/controllers/user_controller.dart';
import 'package:qwibix/features/shop/models/product_list.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/constants/text_strings.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import 'widgets/menuCategory.dart';
import 'widgets/promoSlider.dart';
import 'widgets/searchController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    final controller = Get.put(UserController()); 
    return const Scaffold(
//       appBar: AppBar(
//         leading:  Icon(Iconsax.menu, 
//         color: darkMode ? Colors.white : Colors.black,),
//         title: Text('Belly Max', 
//         style: TextStyle(
//           color: darkMode ? Colors.white: Colors.black
//         ) ,
//         ), centerTitle: true, 
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(100), 
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 5,), 
//               Padding(
//                 padding: const EdgeInsets.only(left: 18.0),
//                 child: Text(BTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: BColors.black),),
//               ),
//             const SizedBox(height: 5), 
//               Padding(
//                 padding: const EdgeInsets.only(left: 18.0),
//                 child: Obx(() {
//                   if (controller.profileLoading.value) {
//                     // Display a shimmer loader while user profile is being loaded
//                     return const TShimmerEffect( width: 80, height: 15
                      
//                     ); 
//                   } else {
//  return Text(controller.user.value.fullName, 
//                   style: Theme.of(context).textTheme.headlineSmall!.apply(color: BColors.black),
//                   );
//                   }
                 
//    } ),
//               ), 
//               const SizedBox(height: 5,), 
//                BSearchController(darkMode: darkMode, 
//             text: 'Search for dish or cuisine',),
//             ], 
//           ),
//           ), 
//         actions: [
//           BCartCounterIcon(darkMode: darkMode), 
//            const SizedBox(width: 10,),       
//         ],
//       ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: Column(
      //       children: [  

      //         // Menu Category. 
      //       const menuCategory(),
      //       const SizedBox(height: BSizes.spaceBtwItems,),
      //      const Padding(
      //        padding: EdgeInsets.all(8.0),
      //        child: BPromoSlider(
      //       //   banners: [
      //       //    BImages.banner1, BImages.banner2, BImages.banner3, BImages.banner4
      //       //  ],
      //        ), 
           
    
      //      ), 
      //      const SizedBox(height: BSizes.spaceBtwItems,), 
      //        const Padding(
      //      padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
      //      child: BSectionHeading(title: 'Popular Dishes', buttonTitle: 'View All', ),
      //    ),
      //    const SizedBox(height: BSizes.spaceBtwItems,), 
      //      SizedBox(
      //       height: 600, width: 800,
      //        child: Expanded(
              
      //          child: GridView.builder(
      //           physics: const NeverScrollableScrollPhysics(),
      //           shrinkWrap: true,
      //           padding:  EdgeInsets.zero, 
      //           itemCount: TodaySpecialList.length,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2, 
                

      //           mainAxisSpacing: BSizes.gridViewSpacing,
      //           crossAxisSpacing: BSizes.gridViewSpacing, 
      //           mainAxisExtent: 288
      //           ), 
                
                
      //            itemBuilder: (_, index) => BProductCardVertical(
      //             TodaySpecialList: TodaySpecialList[index],)),
      //        ),
      //      ), 
      //       const SizedBox(height: BSizes.spaceBtwItems,), 

      //       const Padding(
      //      padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
      //      child: BSectionHeading(title: 'Recommended', buttonTitle: 'View All', ),
      //    ),
      //    const SizedBox(height: BSizes.spaceBtwItems,), 
      //     SizedBox(
      //       height: 600, width: 800,
      //        child: Expanded(
              
      //          child: GridView.builder(
      //           physics: const NeverScrollableScrollPhysics(),
      //           shrinkWrap: true,
      //           padding:  EdgeInsets.zero, 
      //           itemCount: TodaySpecialList.length,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2, 
                

      //           mainAxisSpacing: BSizes.gridViewSpacing,
      //           crossAxisSpacing: BSizes.gridViewSpacing, 
      //           mainAxisExtent: 288
      //           ), 
                
                
      //            itemBuilder: (_, index) => BProductCardVertical(
      //             TodaySpecialList: TodaySpecialList[index],)),
      //        ),
      //      ), 
      //      const SizedBox(height: BSizes.spaceBtwItems,), 

      //       const Padding(
      //      padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
      //      child: BSectionHeading(title: 'Breakfast', buttonTitle: 'View All', ),
      //    ), 
      //    const SizedBox(height: BSizes.spaceBtwItems,),  
      //     SizedBox(
      //       height: 600, width: 800,
      //        child: Expanded(
              
      //          child: GridView.builder(
      //           physics: const NeverScrollableScrollPhysics(),
      //           shrinkWrap: true,
      //           padding:  EdgeInsets.zero, 
      //           itemCount: TodaySpecialList.length,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2, 
                

      //           mainAxisSpacing: BSizes.gridViewSpacing,
      //           crossAxisSpacing: BSizes.gridViewSpacing, 
      //           mainAxisExtent: 288
      //           ), 
                
                
      //            itemBuilder: (_, index) => BProductCardVertical(
      //             TodaySpecialList: TodaySpecialList[index],)),
      //        ),
      //      ), 
      //    const SizedBox(height: BSizes.spaceBtwItems,), 

      //       const Padding(
      //      padding: EdgeInsets.only(right: BSizes.spaceBtwItems), 
      //      child: BSectionHeading(title: 'Free Delivery', buttonTitle: 'View All', ),
      //    ),
      //    const SizedBox(height: BSizes.spaceBtwItems,), 
      //     SizedBox(
      //       height: 600, width: 800,
      //        child: Expanded(
              
      //          child: GridView.builder(
      //           physics: const NeverScrollableScrollPhysics(),
      //           shrinkWrap: true,
      //           padding:  EdgeInsets.zero, 
      //           itemCount: TodaySpecialList.length,
      //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 2, 
                

      //           mainAxisSpacing: BSizes.gridViewSpacing,
      //           crossAxisSpacing: BSizes.gridViewSpacing, 
      //           mainAxisExtent: 288
      //           ), 
                
                
      //            itemBuilder: (_, index) => BProductCardVertical(
      //             TodaySpecialList: TodaySpecialList[index],)),
      //        ),
      //      ), 
          
        
      //       ],
      //     ),
      //   ),
     // ),
     body: Text('Je;;p'),
    ); 
  }
}

