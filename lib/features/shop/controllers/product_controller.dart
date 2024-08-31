import 'package:get/get.dart';

class ProductController  extends GetxController{
  static ProductController get instance => Get.find(); 

  RxList<ProductModel> featuredProducts = <ProductModel>[].obs; 

  @override
  void initState() {
    super.initState();
    
  }
}