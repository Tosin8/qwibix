// FOR LOCALHOST CARD

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:bellymax/utils/helpers/helper_functions.dart';
// import 'package:flutter/material.dart';

// import 'package:bellymax/features/shop/models/category_model.dart';
// import 'package:get/get.dart';
// import '../../../controllers/category_controller.dart';
// // ignore: camel_case_types
// class menuListCard extends StatelessWidget {
//    menuListCard({
//     Key? key,
//     // ignore: non_constant_identifier_names
//    // required this.FoodMenus,
//   }) : super(key: key);

// // ignore: non_constant_identifier_names
// final categoryController = Get.put(CategoryController());


// //final FoodMenu FoodMenus; == for offline calling model. 
//   @override
//   Widget build(BuildContext context) {
//     final darkMode = BHelperFunctions.isDarkMode(context);
//     final category = categoryController.featuredCategories;
//     return GestureDetector( 
//       onTap: () {
        
//       },
//       child: Column(
//         children: [
//           Container(
//             height: 70, width: 70,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(category.image), fit: BoxFit.cover), 
//           borderRadius: BorderRadius.circular(40)),
//           ),
//           const SizedBox(height: 10,), 
//           Text(category.name, 
//           style: Theme.of(context).textTheme.labelMedium!.apply(color: darkMode ? Colors.white : Colors.black),
//           maxLines: 1, overflow: TextOverflow.ellipsis,
//           // style: TextStyle(
//           //   color: darkMode ? Colors.white : Colors.black,
//           //   fontWeight: FontWeight.w600, 
//           //   fontSize: 15),
//             ),
//         ],
//       ),
//     );
//   }
// }


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/shimmer.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';



import '../../../../../utils/constants/colors.dart';

class MenuListCard extends StatelessWidget {
   const MenuListCard({
    Key? key,
    required this.image, 
    required this.title,
    this.textColor = BColors.white,
    this.onTap,
    this.isNetworkImage = true, this.backgroundColor,
  }) : super(key: key);


final String image, title; 
final Color textColor; 
final void Function()? onTap;
final bool isNetworkImage;  
final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return GestureDetector( 
      onTap: onTap, 
      child: Padding(
        padding: const EdgeInsets.only(
          right: BSizes.spaceBtwItems),
        child: Column(
          children: [
            
            // Circular Icon
            Container(
      width: 56, height: 56, 
    
      padding: const EdgeInsets.all(BSizes.sm), 
      decoration:  BoxDecoration(
      
      color: backgroundColor ?? (dark ? BColors.black : BColors.white),
      borderRadius: BorderRadius.circular(100), 
      ), 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100), 
        child: isNetworkImage ? CachedNetworkImage(
          fit: BoxFit.cover,
          color: Colors.transparent,
          progressIndicatorBuilder: (
            context, url, downloadProgress) => const TShimmerEffect(width: 55, 
          height: 55,
           radius: 55,), 
          errorWidget: (context, url, error) => const Icon(Icons.error),
          imageUrl: image) : 
          Image(
            fit: BoxFit.cover,
            image: AssetImage(image), 
            //color: Colors.transparent
            )
      ),
            ), 
      
            // Text
            const SizedBox(height: BSizes.spaceBtwItems/2,), 
            SizedBox(
              width: 55, 
              child: Text(title,
              style: Theme.of(context).textTheme.labelMedium!.apply(color: dark? BColors.white : BColors.dark),
              maxLines: 1, 
              overflow: TextOverflow.ellipsis,),
              
            
            )
      
          ],
        ),
      ),
    );
  }
}
