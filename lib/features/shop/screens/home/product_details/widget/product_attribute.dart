// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:qwibix/common/widgets/chips/choice_chips.dart';
import 'package:qwibix/common/widgets/texts/b_productPriceText.dart';
import 'package:qwibix/common/widgets/texts/product_title_text.dart';
import 'package:qwibix/common/widgets/texts/sectionHeading.dart';
import 'package:qwibix/features/shop/controllers/product/variation_controller.dart';
import 'package:qwibix/utils/constants/colors.dart';
import 'package:qwibix/utils/constants/rounded_container.dart';
import 'package:qwibix/utils/constants/sizes.dart';
import 'package:qwibix/utils/helpers/helper_functions.dart';

import '../../../../models/product_model.dart';

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VariationController());
    final dark = BHelperFunctions.isDarkMode(context);
    return Obx(() => Column(
      children: [
// Selected attributes pricing and description.

// display variation price and stock when some variation is selected.
        if (controller.selectedVariation.value.id.isNotEmpty)
          BRoundedContainer(
            padding: const EdgeInsets.all(BSizes.md),
            backgroundColor: dark ? BColors.darkerGrey : BColors.grey,
            child: Column(
              children: [
                /// title, price and stock status.
                Row(
                  children: [
                    const BSectionHeading(
                      title: 'Variation',
                      showActionButton: false,
                    ),
                    const SizedBox(
                      width: BSizes.spaceBtwItems,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const BProductTitleText(
                                title: 'price   :   ', smallSize: true),
                            // actual price.
                            if(controller.selectedVariation.value.salePrice > 0)
                            Text(
                              '\$${controller.selectedVariation.value.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough),
                            ),
                            const SizedBox(
                              width: BSizes.spaceBtwItems,
                            ),

                            // Sales price
                             BProductPriceText(price: controller.getVariationPrice()),
                          ],
                        ),

                        // Stock
                        Row(
                          children: [
                            const BProductTitleText(
                              title: 'Stock : ',
                              smallSize: true,
                            ),
                            Text(
                              controller.variationStockStatus.value,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .apply(
                                      color:
                                          dark ? BColors.white : BColors.black),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),

                // Variation Description.
                 BProductTitleText(
                  title:
                     controller.selectedVariation.value.description ?? '', 
                  smallSize: true,
                  maxLines: 4,
                ),
              ],
            ),
          ),

        const SizedBox(
          height: BSizes.spaceBtwItems,
        ),

        // attributes.
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: product.productAttributes!
              .map((attribute) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BSectionHeading(
                        title: attribute.name ?? '',
                        showActionButton: false,
                      ),
                      const SizedBox(
                        height: BSizes.spaceBtwItems / 2,
                      ),

                      Obx(() => Wrap(
                            spacing: 8,
                            children: attribute.values!.map((attributeValue) {
                              final isSelected = controller
                                      .selectedAttributes[attribute.name] ==
                                  attributeValue;
                              final available = controller
                                  .getAttributesAvailabilityInVariation(
                                      product.productVariations!,
                                      attribute.name!)
                                  .contains(attributeValue);
                              return BChoiceChip(
                                  text: attributeValue,
                                  selected: isSelected,
                                  onSelected: available
                                      ? (selected) {
                                          if (selected && available) {
                                            controller.onAttributeSelected(
                                                product,
                                                attribute.name ?? '',
                                                attributeValue);
                                          }
                                        }
                                      : null);
                            }).toList(),
                          )),
                    ],
                  ))
              .toList(),
        ),
      ],
    ));
  }
}
