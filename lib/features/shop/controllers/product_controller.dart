import 'package:get/get.dart';

import '../models/product_model.dart';

class ProductController  extends GetxController{
  static ProductController get instance => Get.find(); 

  RxList<ProductModel> featuredProducts = <ProductModel>[].obs; 

  @override
  void onInit() {
    fetchFeaturedProducts(); 
    super.onInit();
    
 
  }
  void fetchFeaturedProducts(){}
}