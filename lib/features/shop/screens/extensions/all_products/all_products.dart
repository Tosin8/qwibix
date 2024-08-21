import 'package:flutter/material.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/products/sortable.dart';
import 'package:qwibix/utils/constants/sizes.dart';


class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      appBar: BAppBar(
        title: Text('All Products'), showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        EdgeInsets.all(BSizes.defaultSpace),
        child: SortableProducts(),
        ),
      )
    );
  }
}