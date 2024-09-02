import 'package:get/get.dart';
import 'package:qwibix/common/widgets/loaders/loaders.dart';
import 'package:qwibix/data/repositories/product/product_repository.dart';
import 'package:qwibix/utils/constants/enums.dart';

import '../../models/product_model.dart';

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

// Assign products
featuredProducts.assignAll(products); 
    }
    catch(e){
      BLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString()); 
    }
     finally {
      isLoading.value = false; 
    }
  }

  // Get the product price or price range for variation. 
  String getProductPrice(ProductModel product){
    double smallestPrice = double.infinity; 
    double largestPrice = 0.0; 

    // if no variations exit, return the simple price or sale price
    if(product.productType == ProductType.single.toString()){
      return (product.salePrice > 0 ? product.salePrice : product.price).toString(); 
    } else {

      // calculate the smallest and largest prices among variation. 
      for(var variation in product.productVariations!) {
        // determine the price to consider sale price if available, otherwise use regular price.. 
        double priceToConsider = variation.salePrice > 0.0 ? variation.salePrice : variation.price; 
        if(priceToConsider < smallestPrice) smallestPrice = priceToConsider; 
        if(priceToConsider > largestPrice) largestPrice = priceToConsider; 
      }
    }

    // if smallest and largest prices are the same, return the single price. 
    if(smallestPrice.isEqual(largestPrice)){
      return largestPrice.toString(); 
    } else 
    {
      // otherwise , return a price range. 
      return '$smallestPrice - \$$largestPrice';
    }
  }

// calculate discount percentage
  String? calculateSalePercentage(double originalPrice, double? salePrice){
  if(salePrice == null || salePrice <= 0.0)return null;
  if(originalPrice <= 0) return null;

  double percentage = ((originalPrice - salePrice) / originalPrice) * 100;
  return percentage.toStringAsFixed(0);
}

// check product stock status
String getProductStockStatus(int stock){
  return stock > 0 ? 'In Stock': 'Out of Stock'; 
}
}


