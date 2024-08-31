import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';

import '../models/product_model.dart';

class ProductController  extends GetxController{
  static ProductController get instance => Get.find(); 
  final isLoading = false.obs; 
  final productRepository = Get.put(ProductRepository()); 

  RxList<ProductModel> featuredProducts = <ProductModel>[].obs; 

  @override
  void onInit() {
    fetchFeaturedProducts(); 
    super.onInit();
    
 
  }
  void fetchFeaturedProducts() async {
    try{
      // show loader while loading products. 
isLoading.value = true; 

// fetch products 
final products = await productRepository.getFeaturedProducts(); 
    }
    catch(e){
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
    }
     finally {
      isLoading.value = false; 
    }
  }
}