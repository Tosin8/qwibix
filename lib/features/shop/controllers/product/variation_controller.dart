import 'package:get/get.dart';
import 'package:qwibix/features/shop/models/product_variation_model.dart';

import '../../models/product_model.dart';

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
  }

  // Check attribute availability/ stock in variation
  Set<String?> getAttributesAvailabilityInVariation(List<ProductVariationModel> variations, String attributeName){}

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