// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: SingleChildScrollView(
        child: Column(
          children: [
            BPrimaryHeaderContainer(
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      )
    );
  }
}
