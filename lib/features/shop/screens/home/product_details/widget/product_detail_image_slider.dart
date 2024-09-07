// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/appbar/appbar.dart';
import 'package:qwibix/common/widgets/images/b_rounded_image.dart';
import 'package:qwibix/common/widgets/products/favourite_icon/favourite_icon.dart';
import 'package:qwibix/features/shop/controllers/product/images_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../models/product_model.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions.isDarkMode(context);
    final controller = Get.put(ImagesController());
    final images = controller.getAllProductImages(product);
    return BCurvedEdgeWidget(
      child: Container(
          color: dark ? BColors.darkerGrey : BColors.light,
          child: Stack(
            children: [
              // Main Image Large
              SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(BSizes.productImageRadius * 2),
                  child: Center(
                      child: Obx(() {
                        final image = controller.selectedProductImage.value; 
                        return
                          GestureDetector( 
                            onTap: () => controller.showEnlargedImage(image), 
                            child: CachedNetworkImage(imageUrl: image, 
                            progressIndicatorBuilder: (_, __, downloadProgress) => CircularProgressIndicator(value: downloadProgress.progress, color: BColors.primary),
                            ),
                          ); 
                      }
                          )
                          ),
                ),
              ),

              // Image Slider.

              Positioned(
                right: 0,
                bottom: 30,
                left: BSizes.defaultSpace,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    itemCount: images.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      width: BSizes.spaceBtwItems,
                    ),
                    itemBuilder: (_, index) => Obx(
                      (){
                        final imageSelected = controller.selectedProductImage.value == images[index];
                        return BRoundedImage(
                      width: 80,
                      isNetworkImage: true,
                      backgroundColor: dark ? BColors.dark : BColors.white,
                      imageUrl: images[index], 
                      border: Border.all(color:imageSelected ?  BColors.primary: Colors.transparent),
                      onPressed: () => controller.selectedProductImage.value = images[index],
                      padding: const EdgeInsets.all(BSizes.sm),
                    ); 
                      }
                    )
                  ),
                ),
              ),

              // AppBar Icons
              const BAppBar(
                showBackArrow: true,
                actions: [
                FavouriteIcon(), 
                ],
              )
            ],
          )),
    );
  }
}
