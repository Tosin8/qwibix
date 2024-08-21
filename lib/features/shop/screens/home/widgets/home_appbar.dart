import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/products/cart/cart_menu_icons.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/text_strings.dart';

import '../../../../../common/widgets/appbar/appbar.dart';

class BHomeAppBar extends StatelessWidget {
  const BHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(BTexts.homeAppbarTitle,
           style: Theme.of(context).textTheme.labelMedium!.apply(color: BColors.grey), 
           ),
            Text(BTexts.homeAppbarSubTitle,
           style: Theme.of(context).textTheme.headlineSmall!.apply(color: BColors.white), 
           ),
           
        ],
      ), 
      actions:  const [
        BCartCounterIcon(
        
         
        )
      ],
    );
  }
}
