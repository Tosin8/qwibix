// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:qwibix/utils/constants/circular_container.dart';

import 'package:qwibix/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath( 
              clipper: BCustomCurvedEdges(),
              child: Container(
                color: BColors.primary, 
                padding: const EdgeInsets.all(0), 
                child:  SizedBox(
                  height: 400,
                  child: Stack(
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
