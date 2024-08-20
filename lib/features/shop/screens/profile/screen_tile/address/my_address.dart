import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/features/shop/screens/profile/screen_tile/address/add_new_address.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: BColors.primary,
        child: Icon(Iconsax.add,
         color: dark ?  BColors.black: BColors.white),
        onPressed: () => Get.to(() => const AddNewAddressScreen())),
        appBar: BAppBar(
          showBackArrow: true, 
          title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall,)
        ),
      
    );
  }
}