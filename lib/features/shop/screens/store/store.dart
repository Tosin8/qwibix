import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/images/b_brand_image.dart';
import 'package:qwibix/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:qwibix/common/widgets/texts/brandTitleText_withIcon.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/enums.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: BAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          BCartCounterIcon(
            onPressed: () {},
           iconColor: BColors.black,
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
             SliverAppBar(
              pinned: true, 
              floating: true, 
              backgroundColor: BHelperFunctions.isDarkMode(context) ? BColors.black : BColors.white,
              expandedHeight: 440, 

              flexibleSpace: Padding(padding: const EdgeInsets.all(BSizes.defaultSpace), 
              child: ListView(
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(), 
                children:  [

                  // Search Bar. 
                 // SizedBox(height: BSizes.spaceBtwItems), 
                  const BSearchContainer(text: 'Search here', showBorder: true, showBackground: false, padding: EdgeInsets.zero,), 
                  const SizedBox(height: BSizes.spaceBtwSections,), 


                  /// Featured Brands. 
                  BSectionHeading(title: 'Featured Brands', onPressed: () {
                    
                  },), 
                  const SizedBox(height: BSizes.spaceBtwItems / 1.5,), 

                  GridLayout(itemCount: 4,
                  mainAxisExtent: 80,
                   itemBuilder: (_, index) {
                     return  GestureDetector( 
                    onTap: (){}, 
                     child: BRoundedContainer(
                      padding: const EdgeInsets.all(BSizes.sm), 
                      showBorder: true, 
                      backgroundColor: Colors.transparent, 
                      child: Row(
                        children: [
                     
                          // brand icons
                          BCircularImage( 
                            isNetWorkImage: false, 
                            image: BImages.clothIcon, 
                            backgroundColor: Colors.transparent, 
                            overlayColor: BHelperFunctions.isDarkMode(context) ? BColors.white: BColors.black,
                          ), 
                          const SizedBox(width: BSizes.spaceBtwItems / 2,), 
                     
                     
                          // Text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const BrandTitleVerifyIcon(
                                title: 'Nike', 
                                brandTextSize: TextSizes.large,), 
                                Text('256 Products,', 
                                overflow: TextOverflow.ellipsis, 
                                style: Theme.of(context).textTheme.labelMedium,)
                            ],
                          ), 
                        ],
                      ),
                                       ),
                   );
                   })
                ],
              ),
              ),
              
            )
          ]; 
        }, body: Container(),)
      
      ),
    );
  }
}


