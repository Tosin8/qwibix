// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/shimmers/shimmer.dart';

class BrandsShimmer extends StatelessWidget {
  const BrandsShimmer({
    Key? key,
  this.itemCount = 4,
  }) : super(key: key);

final int itemCount; 
  @override
  Widget build(BuildContext context) {
    return GridLayout( 
      mainAxisExtent: 80, 
      itemCount: itemCount, 
      itemBuilder: (_, __ ) =>  const TShimmerEffect(width: 300, height: 80),
    );
  }
}
