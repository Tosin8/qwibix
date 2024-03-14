import 'package:bellymax/common/widgets/carticon.dart';
import 'package:bellymax/common/widgets/grid_layout/grid_layout.dart';
import 'package:bellymax/common/widgets/products/product_cards/brandpartners.dart';
import 'package:bellymax/common/widgets/texts/sectionHeading.dart';
import 'package:bellymax/model/brand_feature.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = BHelperFunctions.isDarkMode(context);
    return DefaultTabController( 
      length: 8,
      child: Scaffold(
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
                expandedHeight: 300, 
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
      
       GridLayout(itemCount: BrandList.length, mainAxisExtent: 80,
       itemBuilder: (_, index) {
        return BrandPartnersCard(BrandList: BrandList[index],);
       }, 
       ), 
       
      ],
                    ),
                    ),
      
                    // Tabs  for categories and brands
                  bottom: BTabBar(), 
              ),
            ]; 
          }, 
           
          body: Container())
      ),
    );
  }
}

class BTabBar extends StatelessWidget implements PreferredSizeWidget{
  const BTabBar({
    super.key, required this.tabs,
  });

final List<Widget> tabs; 
  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context); 
    return Material(
      color: dark ? BColors.black : BColors.white,
      child: TabBar(
        padding:  EdgeInsets.zero,
        tabAlignment: TabAlignment.start, 
        isScrollable: true, 
        indicatorColor: BColors.primary, 
        unselectedLabelColor: BColors.darkGrey, 
        labelColor: BHelperFunctions.isDarkMode(context) ? BColors.white: BColors.primary,
        tabs: tabs),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight()); 
}

