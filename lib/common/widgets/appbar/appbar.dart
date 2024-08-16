import 'package:flutter/material.dart';
import 'package:qwibix/utils/device/device_utlity.dart';

class BAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
  return const Placeholder(); 
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BDeviceUtils.getAppBarHeight());
  
}