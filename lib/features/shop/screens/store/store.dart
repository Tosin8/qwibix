import 'package:bellymax/common/widgets/carticon.dart';
import 'package:bellymax/features/shop/screens/home/widgets/searchController.dart';
import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                padding: EdgeInsets.all(
                  BSizes.defaultSpace), 
                  child: ListView(
shrinkWrap: true, 
physics: const NeverScrollableScrollPhysics(),
children: [

  // searchbar
 
  BSearchController(darkMode: darkMode, text: ''), 
  SizedBox(height: BSizes.spaceBtwSections,), 
],
                  ),),
            ),
          ]; 
        }, 
         
        body: Container())
    );
  }
}

