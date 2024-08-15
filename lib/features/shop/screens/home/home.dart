
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



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    final controller = Get.put(UserController()); 
    return  Scaffold(
      appBar: AppBar(
        leading:  Icon(Iconsax.menu, 
        color: darkMode ? Colors.white : Colors.black,),
        title: Text('Belly Max', 
        style: TextStyle(
          color: darkMode ? Colors.white: Colors.black
        ) ,
        ), centerTitle: true, 
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5,), 
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(BTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: BColors.black),),
              ),
            const SizedBox(height: 5), 
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Obx(() {
                  if (controller.profileLoading.value) {
                    // Display a shimmer loader while user profile is being loaded
                    return const TShimmerEffect( width: 80, height: 15
                      
                    ); 
                  } else {
 return Text(controller.user.value.fullName, 
                  style: Theme.of(context).textTheme.headlineSmall!.apply(color: BColors.black),
                  );
                  }
                 
   } ),
              ), 
              const SizedBox(height: 5,), 
            //    BSearchController(darkMode: darkMode, 
            // text: 'Search for dish or cuisine',),
            ], 
          ),
          ), 
        actions: [
          BCartCounterIcon(darkMode: darkMode), 
           const SizedBox(width: 10,),       
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [  

          
              SizedBox(height: 20,),
              Text('Hello Home'), 
  
  ], 
          )), 
      )  ); 
  }
}

