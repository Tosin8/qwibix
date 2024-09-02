import 'package:get/get.dart';
import 'package:qwibix/features/shop/models/product_variation_model.dart';

import '../../models/product_model.dart';
import 'images_controller.dart';

class VariationController  extends GetxController{
  static VariationController get to => Get.find();

  /// Variables
  RxMap selectedAttributes = {}.obs; 
  RxString variationStockStatus = ''.obs; 
  Rx<ProductVariationModel> selectedVariation = ProductVariationModel.empty().obs; 

  // Select Attribute, and variation
  void onAttributeSelected(ProductModel product, attributeName, attributeValue){

    // when attribute is selected we will first add that attribute to the selected attributes. 
    final selectedAttributes = Map<String, dynamic>.from(this.selectedAttributes); 
    selectedAttributes[attributeName] = attributeValue; 
    this.selectedAttributes[attributeName] = attributeValue; 

    final selectedVariation = product.productVariations!.firstWhere((variation) => _isSameAttributeValues(variation.attributeValues, selectedAttributes), 
    orElse: () => ProductVariationModel.empty(),
    );  

    // show the selected variation image as a main image. 
    if(selectedVariation.image.isNotEmpty) {
      ImagesController.instance.selectedProductImage.value = selectedVariation.image; 
    }

    // assign selected variation
    this.selectedVariation.value = selectedVariation; 

    // update selected product variation status
    getProductVariationStockStatus(); 
  }

  /// check if selected attributes matches any variation attributes
  bool _isSameAttributeValues(Map<String, dynamic> variationAttributes, Map<String, dynamic> selectedAttributes){

    // if selectedAttributes contains 3 attributes and current variables contains 2 then return. 
    if(variationAttributes.length != selectedAttributes.length) return false; 

    // if any of the attributes is different then return. E.g. [Green, large] * [Green, Small] 
    for (final key in variationAttributes.keys) {
      // Attributes[key] = Value which caould be [Green, Small, Cotton] etc. 
      if(variationAttributes[key] != selectedAttributes[key]) return false; 
    }

    return true; 
  }



  // Check attribute availability/ stock in variation
  Set<String?> getAttributesAvailabilityInVariation(List<ProductVariationModel> variations, String attributeName){

    // pass the variation to check which attributes are available and stock is not 0 
    final availableVariationAttributeValues = variations.where((variation) => 
    // check empty / out of stock attributes
    variation.attributeValues[attributeName] != null && variation.attributeValues[attributeName]!.isNotEmpty && variation.stock > 0
     
     ).toSet(); 
  }

  /// Check product variation stock status
  void getProductVariationStockStatus(){
    variationStockStatus.value = selectedVariation.value.stock > 0 ? 'In Stock' : 'Out of Stock'; 
  }

  // Reset Selected attributes when switching products
  void resetSelectedAttributes(){
    selectedAttributes.clear(); 
    variationStockStatus.value = ''; 
    selectedVariation.value = ProductVariationModel.empty(); 
  }
}