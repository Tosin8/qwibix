import 'package:flutter/material.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column( 
      children: [
        Row(children: [
          CircleAvatar()
        ],)
      ],
    );
  }
}