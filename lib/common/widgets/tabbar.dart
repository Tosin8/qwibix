import 'package:bellymax/utils/constants/colors.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:bellymax/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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

