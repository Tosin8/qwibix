import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qwibix/common/widgets/grid_layout/grid_layout.dart';
import 'package:qwibix/common/widgets/loaders/animation_loader.dart';
import 'package:qwibix/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:qwibix/features/shop/controllers/product/favourite_controller.dart';
import 'package:qwibix/navigation_menu.dart';
import 'package:qwibix/utils/constants/circular_icon.dart';
import 'package:qwibix/utils/constants/image_strings.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';
import 'package:qwibix/utils/http/cloud_helper_function.dart';

import '../../../../common/widgets/shimmers/vertical_product_shimmer.dart';
import '../home/home.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = FavouriteController.instance;
    final dark = BHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Wishlist',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: dark ? Colors.white : Colors.black),
        ),
        actions: [
          BCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(BSizes.defaultSpace),

            /// Products Grid.
            child: Obx(() => FutureBuilder(
                future: controller.favouriteProducts(),
                builder: (context, snapshot) {
                  // nothing found widget.
                  final emptyWidget = BAnimationLoaderWidget(
                    text: 'Whoops! Wishlist is Empty....',
                    animation: BImages.pencilAnimation,
                    showAction: true,
                    actionText: 'Let\'s add some',
                    onActionPressed: () =>
                        Get.off(() => const NavigationMenu()),
                  );

                  const loader = VerticalProductShimmer(itemCount: 6);
                  final widget = BCloudHelperFunctions.checkMultiRecordState(
                      snapshot: snapshot,
                      loader: loader,
                      nothingFound: emptyWidget);

                  if (widget != null) return widget;

                  final products = snapshot.data!;
                  return GridLayout(
                      itemCount: products.length,
                      itemBuilder: (_, index) =>
                          BProductCardVertical(product: products[index]));
                }))),
      ),
    );
  }
}
