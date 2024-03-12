import 'package:bellymax/utils/constants/sizes.dart';
import 'package:bellymax/utils/device/device_utlity.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BSearchController extends StatelessWidget {
  const BSearchController({
    super.key,
    required this.darkMode, required this.text,
  });

  final bool darkMode;
  final String text; 
  //final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: BSizes.defaultSpace * 0.5),
      child: Container(
        width: BDeviceUtils.getScreenWidth(context),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(BSizes.cardRadiusLg), 
      // border: Border.all(color: BColors.grey),
    ),
      child:  
        TextFormField(
              
          decoration: InputDecoration(
      
            prefixIcon:  Icon(Iconsax.search_normal_1,
            color: darkMode ? Colors.white : Colors.black45,),
            hintText: text, 
           hintStyle: TextStyle(fontSize: 14, color: darkMode ? Colors.white: Colors.black45), 
          ),
        )),
              );
  }
}

