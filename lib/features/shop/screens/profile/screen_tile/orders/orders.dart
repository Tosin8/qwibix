import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: BAppBar(
        showBackArrow: true,
        title: Text('My Orders',
        style: Theme.of(context).textTheme.headlineSmall,),)
    );
  }
}