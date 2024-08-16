// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
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
            Container(
              color: BColors.primary, 
              padding: const EdgeInsets.all(0), 
              child:  Stack(
                children: [
                  BCircularContainer(
                    backgroundColor: BColors.textWhite.withOpacity(0.1),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
