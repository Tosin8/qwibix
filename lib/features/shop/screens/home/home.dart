// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';

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

class BCartCounterIcon extends StatelessWidget {
  const BCartCounterIcon({
    Key? key,
    this.iconColor = BColors.white,
    required this.onPressed,
  }) : super(key: key);

final Color? iconColor; 
final VoidCallback onPressed; 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: (){}, 
        icon: const Icon(Iconsax.shopping_bag),
         color: BColors.white, ),
         Positioned(
          right: 0, 
          child: Container(
            width: 18, height: 18, 
            decoration: BoxDecoration(
              color: BColors.black,  
              borderRadius: BorderRadius.circular(100), 
            ),
            child: Center(
              child: Text('2', 
              style: Theme.of(context).textTheme.labelLarge!.apply(color: BColors.white, fontSizeFactor: 0.8),)
            )
          ))
    
      ],
    );
  }
}
