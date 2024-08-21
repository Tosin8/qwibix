import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qwibix/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:qwibix/common/widgets/shimmer.dart';
import 'package:qwibix/features/personalization/controllers/user_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/text_strings.dart';

import '../../../../../common/widgets/appbar/appbar.dart';

class BHomeAppBar extends StatelessWidget {
  const BHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController()); 
    return BAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: BColors.grey),
          ),
          Obx(() {
            if(controller.profileLoading.value) {
              // display a shimmer effect while user profile is loading 
              return const TShimmerEffect(width: 80, height: 15); 
            } else {
              return Text(controller.user.value.fullName, style: Theme.of(context).textTheme.headlineSmall!.apply(color: BColors.white),);
            }
          
          
     }   ),
        ],
      ),
      actions: const [BCartCounterIcon()],
    );
  }
}
