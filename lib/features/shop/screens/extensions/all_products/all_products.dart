// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/shimmers/vertical_product_shimmer.dart';
import 'package:qwibix/features/shop/models/product_model.dart';
import 'package:qwibix/utils/constants/sizes.dart';

import '../../../../../common/widgets/products/sortable.dart';
import '../../../controllers/all_products_controller.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    Key? key,
    required this.title,
    this.query,
    this.futureMethod,
  }) : super(key: key);

  final String title; 
  final Query? query; 
  final Future<List<ProductModel>>? futureMethod; 

  @override
  Widget build(BuildContext context) {

    // initialize controller for managing product fetching.
    final controller = Get.put(AllProductsController()); 
    return  Scaffold( 
      appBar: BAppBar(
        title: Text(title), showBackArrow: true,
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(BSizes.defaultSpace),
      child: FutureBuilder(
      future: futureMethod ?? controller.fetchProductsByQuery(query),
        builder: (context, snapshot) {

          // check the state of the futurebuilder snapshot. 
          const loader = VerticalProductShimmer(); 
          if(snapshot.connectionState == ConnectionState.waiting) {
            return loader;
          }
           if(!snapshot.hasData || snapshot.data == null || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Data Found!'));
          }
          if(snapshot.hasError) {
            return const Center(child: Text('Something went wrong.'));
          }

          // products found!
          final products = snapshot.data!; 
          return  SortableProducts(products: products,);
        }
      ),
        ),
      )
    );
  }
}
