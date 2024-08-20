import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/features/shop/screens/profile/screen_tile/orders/widget/order_list.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: BAppBar(
        showBackArrow: true,
        title: Text('My Orders',
        style: Theme.of(context).textTheme.headlineSmall,),), 

        body: const Padding(padding: EdgeInsets.all(BSizes.defaultSpace), 
        
        // Orders
        child: OrderListItems(), 
        
        ),
    );
  }
}