import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: const BAppBar(
        title: Text('All Products'), showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(BSizes.defaultSpace),
        child: Column(
          children: [

            // drop down
            DropdownButtonFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.sort), 
              ),
              items: const [], 
              onChanged: (value) {},
            )
          ],
        ),
        ),
      )
    );
  }
}