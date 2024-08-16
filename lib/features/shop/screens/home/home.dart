// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: BColors.primary, 
              padding: const EdgeInsets.all(0), 
              child: const Stack(
                children: [
                  BCircularContainer()
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class BCircularContainer extends StatelessWidget {
  const BCircularContainer({
    Key? key,
    this.width,
    this.height,
    required this.radius,
    this.child,
    required this.backgroundColor,
  }) : super(key: key);

  final double? width; 
  final double? height;
  final double radius; 
  final Widget? child; 
  final Color backgroundColor; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      height: 400, 
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(400), 
        color: BColors.textWhite.withOpacity(0.1), 
      ),
    );
  }
}
