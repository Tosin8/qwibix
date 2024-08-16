// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/products/cart/cart_menu_icons.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold( 
        body: SingleChildScrollView(
          child: Column(
            children: [
              BPrimaryHeaderContainer(
                child: Column(
                  children: [
                    BAppBar(
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
                      actions:  [
                        BCartCounterIcon(
                          onPressed: () {
                            
                          },
                          iconColor: BColors.white,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
