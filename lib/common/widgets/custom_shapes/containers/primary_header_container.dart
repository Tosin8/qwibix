
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class BPrimaryHeaderContainer extends StatelessWidget {
  const BPrimaryHeaderContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

final Widget child; 
  @override
  Widget build(BuildContext context) {
    return BCurvedEdgeWidget(
      child:  Container(
            color: BColors.primary, 
            padding: const EdgeInsets.all(0), 
            
            child:  Stack(
                children: [
                  Positioned(
                    top: -150, right: -250, 
                    child: BCircularContainer(
                      
                      backgroundColor: BColors.textWhite.withOpacity(0.1),
                    ),
                  ),
                   Positioned(
                    top: 100, right: -300, 
                     child: BCircularContainer(
                      backgroundColor: BColors.textWhite.withOpacity(0.1),
                         ),
                   ),  
                   child, 
                ],
            ),
            
          ),
    );
  }
}
