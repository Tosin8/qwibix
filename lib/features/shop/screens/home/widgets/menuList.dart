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


import 'package:flutter/material.dart';

class MenuListCard extends StatelessWidget {
  const MenuListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}