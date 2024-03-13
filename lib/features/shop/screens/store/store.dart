import 'package:bellymax/common/widgets/carticon.dart';
import 'package:bellymax/common/widgets/images/b_brand_image.dart';
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/rounded_container.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Menu', style: Theme.of(context).textTheme.headlineMedium,), 
        actions: [
          BCartCounterIcon(darkMode: darkMode), 
          const SizedBox(width: 10,)
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: 
        (_, innerBoxIsScrolled){
          return[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true, 
              floating: true, 
              backgroundColor: BHelperFunctions.isDarkMode(context) ? BColors.black : BColors.white,
              expandedHeight: 440, 
              flexibleSpace:  Padding(
                padding: const EdgeInsets.all(
                  BSizes.defaultSpace), 
                  child: ListView(
shrinkWrap: true, 
physics: const NeverScrollableScrollPhysics(),
children: [

  // featured brand
 const BSectionHeading(title: 'Featured Partners', buttonTitle: ''), 
 const SizedBox(height: BSizes.spaceBtwItems / 1.5), 
 BRoundedContainer(
  padding: const EdgeInsets.all(BSizes.sm), 
  showBorder: true, 
  backgroundColor: Colors.transparent, 
  child: Row(
    children: [

      /// Icon 
      BrandImageCard(
        image: '',
        isNetWorkImage: false, 
        backgroundColor: Colors.transparent, 
        overlayColor: BHelperFunctions.isDarkMode(context) ? BColors.white: BColors.black,), 
        
    ],
  ),
 )
],
                  ),),
            ),
          ]; 
        }, 
         
        body: Container())
    );
  }
}

