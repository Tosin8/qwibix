// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../extensions/all_products/all_products.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold( 
        body: SingleChildScrollView(
          child: Column(
            children: [
              const BPrimaryHeaderContainer(
                child: Column(
                  children: [


                    SizedBox(height: BSizes.spaceBtwItems,),
                    // appbar
                    BHomeAppBar(), 

                    SizedBox(height: BSizes.spaceBtwItems,),

                    // search bar
                    BSearchContainer(text: 'Search products',), 
 SizedBox(height: BSizes.spaceBtwItems,),
                    // categories

                    Padding(
                      padding: EdgeInsets.only(left: BSizes.defaultSpace), 
                    child: Column(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BSectionHeading(title: 'Popular Categories',
                        showActionButton: false,
                        textColor: BColors.white,),
                        SizedBox(height: BSizes.spaceBtwItems,),

                        // category items
                        BHomeCategories()

                        
                      ],
                    ),), 
                    SizedBox(height: BSizes.spaceBtwSections,), 
                  ],
                ),
              ), 

              // Carousel
              Padding(
                padding: const EdgeInsets.all(BSizes.defaultSpace),
                child: Column(
                  children: [
                    // const BPromoSlider(
                    //   banners: [BImages.banner2, BImages.banner4, BImages.banner3]
                    // ),
                    const BPromoSlider(), 
const SizedBox(height: BSizes.spaceBtwSections,), 

// Heading
BSectionHeading(
  title: 'Popular Products', 
  onPressed: () => Get.to(() => const AllProducts())),
  const SizedBox(height: BSizes.spaceBtwItems,),  
                       // Popular Products. 
                       GridLayout(itemCount: 4, 
                             itemBuilder: (_, index) => const BProductCardVertical(),
                         
                       ), 
                  ]     
                ),

             
                 
              )
            ],
          ),
        )
      ),
    );
  }
}
