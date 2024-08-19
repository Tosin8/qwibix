// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:qwibix/utils/device/device_utlity.dart';

import '../../../utils/constants/sizes.dart';

class BTppBar extends StatelessWidget implements PreferredSizeWidget {
  const BTppBar({
    Key? key,
    this.title,
  this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  }) : super(key: key);

final List<Widget> tabs; 

final Widget? title; 
final bool showBackArrow; 
final IconData?  leadingIcon; 
final List<Widget>? actions;
final VoidCallback? leadingOnPressed; 


  @override
  Widget build(BuildContext context) {
  
  return Padding( 
    padding: const EdgeInsets.symmetric(horizontal: BSizes.md), 
    child: AppBar( 
      automaticallyImplyLeading: false,
     leading: showBackArrow 
     ? IconButton(
      onPressed: () => Get.back(), 
      icon: const Icon(Iconsax.arrow_left)
     )
      : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
      title: title, 
      actions: actions , 
    )
  );  
  
  }

  @override
  
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
  
}
