

import 'package:flutter/material.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/device/device_utlity.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  final String text; 
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
           child: Text(text, style: Theme.of(context).textTheme.bodyMedium,)), 
         Expanded( 
          flex: 11,
           child: SizedBox(
            width: BDeviceUtils.getScreenWidth(context) * 0.5,
             child: LinearProgressIndicator(
              value:value, 
              minHeight: 11, 
              backgroundColor: BColors.grey, 
              borderRadius: BorderRadius.circular(7), 
              valueColor: const AlwaysStoppedAnimation(BColors.primary),
                         ),
           ),
         )
      ],
    );
  }
}
