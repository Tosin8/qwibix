// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';

import 'package:qwibix/utils/device/device_utlity.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';


class BTappBar extends StatelessWidget implements PreferredSizeWidget {
  const BTappBar({
    Key? key, required this.tabs,
   
  }) : super(key: key);

final List<Widget> tabs; 



  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
  
  return Material( 
    color: dark ? BColors.black : BColors.white,
 
    child: TabBar( 
      tabAlignment: TabAlignment.start,
      isScrollable: true,  
      unselectedLabelColor: BColors.darkGrey,
      tabs: tabs, 
      indicatorColor: dark ? BColors.white : BColors.primary,
    )
  );  
  
  }

  @override
  
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
  
}
